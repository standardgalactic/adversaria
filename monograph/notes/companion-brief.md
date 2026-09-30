# Brief for drafting the remaining companion pieces

You are drafting one or more companion essays or papers for the monograph *Adversaria: A Specification for a Public Claim Graph* (author byline "Flyxion", affiliation "Independent Researcher"). The monograph sources are in /home/claude/adversaria/ (main.tex, ch01.tex to ch20.tex). The plan for every piece, with its thesis, source chapters, definitions, principal result, dependencies, "what it must not claim" and audience, is in /home/claude/adversaria/notes/companions.md. Read the entry for each of your pieces there first, then read the source chapters it names, then read the finished examples in /home/claude/adversaria/companions/ (01-unit-of-knowledge.tex through 07-signed-identifications.tex) to match voice, structure and length.

## What the author wants

Basic but complete text for each piece, so that there is something more than a stub. The author will add thorough literature reviews and extensions later. Length: 5 to 10 pages each (roughly 2,500 to 4,500 words). The finished essays 01 to 06 are about the right size and register.

## Hard rules

1. **No literature work.** Do not search the web and do not cite external literature that you have not been given. You may mention a classical result by name only where it is already cited in the monograph (grep the monograph for `cite` and the bibliography). Do not invent references. Where a literature review would go, write a one-sentence visible note in the closing Notes section: "Related work is deliberately not surveyed in this draft." and leave a `% TODO(literature): ...` comment in the source saying what to cover.
2. **Accuracy against the monograph.** Every formal statement you use must either be a result in the monograph (cite it by chapter, in prose, as the finished essays do: "Chapter 12", not `\ref`) or be proved in your text. Read the actual definitions and proofs before relying on them. If you state a result from memory of standard mathematics, say it is standard, keep it small, and mark `% TODO(literature)`. Never state an epistemic-quality choice as a theorem. Keep the three-way split: theorem, definition or design rule, counterexample or design argument.
3. **Do not overstate.** Follow the "What it must not claim" line in the plan. Every piece ends with a section "What this essay does not show" (or "claim", for papers) that says plainly what is not established.
4. **Schematic examples stay schematic.** Invented pages, studies and numbers only, labelled as invented. Do not use real names of scriptures, traditions, studies, products, platforms or encyclopedias. Do not name other systems in the main text.
5. **Style rules (author preferences).** No em dashes at all (use commas, colons, parentheses or separate sentences; en dashes in numeric ranges are fine). Avoid the word "witness" everywhere. No first-person autobiographical framing; "we" is acceptable in papers, essays use an impersonal voice. Titles: use exactly the title in the plan; never add a subtitle phrased as a question. Avoid the word "critique".
6. **Computation where possible.** If you state a label, a count or a construction on a small example, check it by running code (Python in the scratchpad or /tmp is fine). A grounded-labeling checker from the monograph work may exist at /tmp/claude-0/-home-claude/2a120eba-be98-5d2b-b94d-2b68dad293c1/scratchpad/defeat_check.py; read it before use, or write your own small one. Say in the piece when numbers were checked by computation, as 07 does.

## Format

- LaTeX, `article` class, 11pt. Copy the preamble of /home/claude/adversaria/companions/03-standing-without-scores.tex (margin 1.25in, `microtype` with `expansion=false`, amsmath, booktabs, tabularx, enumitem; do not use lmodern). For papers with theorems, use the `amsthm` setup of 07-signed-identifications.tex.
- Title, author line "Flyxion\\\small Independent Researcher", date "30 September 2026".
- Structure: abstract; numbered sections; "What this essay does not show"; "Notes" listing the monograph chapters used.
- File names: `/home/claude/adversaria/companions/NN-slug.tex` using the piece number and a short slug as in the plan (for example `08-no-scalar-no-problem.tex`).
- Compile with `pdflatex -interaction=nonstopmode` twice in /home/claude/adversaria/companions/. Fix every error, every undefined reference and every Overfull box. Then confirm: zero em dashes (`grep -c '—' file.tex` returns 0), no "witness" (case-insensitive), no web citations invented.
- Do not edit the monograph, other companion files, or notes/companions.md. Write only your own .tex and .pdf files.

## Report back

For each piece: file name, page count, word count, one sentence on the thesis as written, and a list of any statement you are not fully sure of (anything that should be checked against the monograph or the literature). Keep the report short.
