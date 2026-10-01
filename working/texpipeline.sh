#!/usr/bin/env bash
# texpipeline.sh
# Batch pipeline: .tex -> .pdf -> clean build debris -> machine-readable outputs.
#
# For every standalone .tex file (one containing \documentclass) it produces,
# in the output directory:
#   NAME.pdf         compiled document
#   NAME.txt         plain text stripped from the PDF (pdftotext), hyphenation repaired
#   NAME.md          structured text converted from the TeX source (pandoc)
#   NAME.summary.json  title, author, abstract/lead, headings, counts, hashes
# plus index.jsonl (one summary per line) for the whole run.
#
# Builds happen in a temporary directory, so aux/log/toc/bbl files never touch
# the source tree. A failed build keeps its log as NAME.build.log.
#
# Requires: latexmk (or pdflatex), pdftotext + pdfinfo (poppler), pandoc, python3.
#
# Usage:
#   ./texpipeline.sh [-r] [-o outdir] [-e pdflatex|xelatex|lualatex] [-c] [dir]
#     -r   recurse into subdirectories
#     -o   output directory (default: ./out)
#     -e   TeX engine: xelatex, lualatex or pdflatex (default: xelatex)
#     -c   also delete stale aux/log files next to each source
#     dir  where to look for .tex files (default: .)

set -uo pipefail

OUT="out"
ENGINE="xelatex"
RECURSE=0
CLEAN_SRC=0

usage() { sed -n '2,/^$/p' "$0" | sed 's/^# \{0,1\}//'; exit "${1:-0}"; }

while getopts "o:e:rch" opt; do
  case "$opt" in
    o) OUT="$OPTARG" ;;
    e) ENGINE="$OPTARG" ;;
    r) RECURSE=1 ;;
    c) CLEAN_SRC=1 ;;
    h) usage 0 ;;
    *) usage 1 ;;
  esac
done
shift $((OPTIND - 1))

ROOT="$(cd "${1:-.}" && pwd)"
mkdir -p "$OUT"
OUT="$(cd "$OUT" && pwd)"

for tool in pdftotext pdfinfo pandoc python3; do
  command -v "$tool" >/dev/null 2>&1 || echo "warning: $tool not found, related output will be skipped" >&2
done

case "$ENGINE" in
  pdflatex) LMK_FLAG="-pdf" ;;
  xelatex)  LMK_FLAG="-xelatex" ;;
  lualatex) LMK_FLAG="-lualatex" ;;
  *) echo "unknown engine: $ENGINE" >&2; exit 1 ;;
esac

# ---- summary builder (python, embedded) -----------------------------------
read -r -d '' SUMMARY_PY <<'PY'
import sys, re, json, hashlib, subprocess, datetime, os

tex_path, txt_path, pdf_path, slug, rel = sys.argv[1:6]
src = open(tex_path, encoding="utf-8", errors="replace").read()
body = re.sub(r"(?m)(?<!\\)%.*$", "", src)  # drop comments

def clean(s):
    s = re.sub(r"\\\\(\[[^\]]*\])?", " ", s)
    s = re.sub(r"\\(large|Large|LARGE|huge|Huge|small|footnotesize|normalsize)\b", "", s)
    s = re.sub(r"\\(textbf|textit|emph|texttt|textsc)\{([^{}]*)\}", r"\2", s)
    s = re.sub(r"\\[a-zA-Z]+\*?(\[[^\]]*\])?", "", s)
    s = s.replace("{", "").replace("}", "").replace("$", "")
    return re.sub(r"\s+", " ", s).strip()

def grab(cmd):
    m = re.search(r"\\" + cmd + r"\s*(?:\[[^\]]*\])?\s*\{((?:[^{}]|\{[^{}]*\})*)\}", body, re.S)
    return clean(m.group(1)) if m else None

title, author, date = grab("title"), grab("author"), grab("date")

abstract = None
m = re.search(r"\\begin\{abstract\}(.*?)\\end\{abstract\}", body, re.S)
if m:
    abstract = clean(m.group(1))

headings = []
for m in re.finditer(r"\\(part|chapter|section|subsection)(\*?)\s*(?:\[[^\]]*\])?\s*\{((?:[^{}]|\{[^{}]*\})*)\}", body):
    headings.append({"level": m.group(1), "starred": bool(m.group(2)), "title": clean(m.group(3))})

text = ""
if os.path.exists(txt_path):
    text = open(txt_path, encoding="utf-8", errors="replace").read()
words = text.split()

pages = None
try:
    info = subprocess.run(["pdfinfo", pdf_path], capture_output=True, text=True).stdout
    pm = re.search(r"Pages:\s+(\d+)", info)
    pages = int(pm.group(1)) if pm else None
except Exception:
    pass

lead = " ".join(words[:150]) if words else None

summary = {
    "id": slug,
    "source": rel,
    "title": title,
    "author": author,
    "date": date,
    "abstract": abstract,
    "lead_150_words": lead,
    "headings": headings,
    "counts": {
        "pages": pages,
        "words_in_pdf_text": len(words),
        "parts": sum(h["level"] == "part" for h in headings),
        "chapters": sum(h["level"] == "chapter" for h in headings),
        "sections": sum(h["level"] == "section" for h in headings),
        "citations": len(re.findall(r"\\cite[a-z]*\s*(?:\[[^\]]*\])*\s*\{", body)),
        "display_equations": len(re.findall(r"\\begin\{(equation|align|gather|multline)\*?\}|\\\[", body)),
    },
    "sha256_tex": hashlib.sha256(src.encode("utf-8", "replace")).hexdigest(),
    "generated": datetime.datetime.now(datetime.timezone.utc).isoformat(timespec="seconds"),
}
print(json.dumps(summary, ensure_ascii=False, indent=2))
PY

# ---- gather inputs ---------------------------------------------------------
if [ "$RECURSE" -eq 1 ]; then
  FIND_ARGS=(-type f -name '*.tex')
else
  FIND_ARGS=(-maxdepth 1 -type f -name '*.tex')
fi

: > "$OUT/index.jsonl"
ok=0; fail=0; skipped=0

while IFS= read -r -d '' f; do
  case "$f" in "$OUT"/*) continue ;; esac
  if ! grep -q '\\documentclass' "$f"; then skipped=$((skipped + 1)); continue; fi

  rel="${f#"$ROOT"/}"
  slug="${rel%.tex}"; slug="${slug//\//__}"
  dir="$(dirname "$f")"; base="$(basename "$f" .tex)"
  tmp="$(mktemp -d)"

  echo "==> $rel"

  # 1. compile (in a scratch dir)
  built=0
  if command -v latexmk >/dev/null 2>&1; then
    ( cd "$dir" && latexmk "$LMK_FLAG" -interaction=nonstopmode -halt-on-error \
        -outdir="$tmp" "$base.tex" ) >"$tmp/build.log" 2>&1 && built=1
  else
    ( cd "$dir" && for _ in 1 2; do
        "$ENGINE" -interaction=nonstopmode -halt-on-error -output-directory="$tmp" "$base.tex" || exit 1
      done ) >"$tmp/build.log" 2>&1 && built=1
  fi

  if [ "$built" -ne 1 ] || [ ! -f "$tmp/$base.pdf" ]; then
    cp "$tmp/build.log" "$OUT/$slug.build.log"
    echo "    build FAILED (log: $OUT/$slug.build.log)"
    rm -rf "$tmp"; fail=$((fail + 1)); continue
  fi
  cp "$tmp/$base.pdf" "$OUT/$slug.pdf"

  # 2. optional cleanup of stale debris beside the source
  if [ "$CLEAN_SRC" -eq 1 ]; then
    for ext in aux log out toc lof lot bbl blg fls fdb_latexmk synctex.gz nav snm vrb idx ilg ind xdv; do
      rm -f "$dir/$base.$ext"
    done
  fi

  # 3. strip PDF to plain text, repair line-end hyphenation, collapse blank runs
  if command -v pdftotext >/dev/null 2>&1; then
    pdftotext -enc UTF-8 -nopgbrk "$OUT/$slug.pdf" - 2>/dev/null \
      | python3 -c '
import sys, re
t = sys.stdin.read()
t = re.sub(r"(\w)-\n(\w)", r"\1\2", t)
t = re.sub(r"\n{3,}", "\n\n", t)
sys.stdout.write(t)
' > "$OUT/$slug.txt"
  fi

  # 4. structured text from source via pandoc (tolerate custom-macro failures)
  if command -v pandoc >/dev/null 2>&1; then
    ( cd "$dir" && pandoc -f latex -t markdown --wrap=none "$base.tex" ) \
      > "$OUT/$slug.md" 2>"$tmp/pandoc.err" \
      || { echo "    pandoc could not fully convert source (see $OUT/$slug.pandoc.err)"; \
           cp "$tmp/pandoc.err" "$OUT/$slug.pandoc.err"; }
  fi

  # 5. machine-readable summary
  if command -v python3 >/dev/null 2>&1; then
    python3 -c "$SUMMARY_PY" "$f" "$OUT/$slug.txt" "$OUT/$slug.pdf" "$slug" "$rel" \
      > "$OUT/$slug.summary.json"
    python3 -c 'import json,sys; print(json.dumps(json.load(open(sys.argv[1])), ensure_ascii=False))' \
      "$OUT/$slug.summary.json" >> "$OUT/index.jsonl"
  fi

  rm -rf "$tmp"
  ok=$((ok + 1))
done < <(find "$ROOT" "${FIND_ARGS[@]}" -print0 | sort -z)

echo
echo "done: $ok built, $fail failed, $skipped skipped (no \\documentclass)"
echo "output: $OUT"
