#!/usr/bin/env bash
set -euo pipefail

REPO="adversaria"
DESCRIPTION="Adversaria: epistemic cartography and the public claim graph"

# Make sure we're not accidentally inside another Git repository.
if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "This directory is already inside a Git repository."
    echo "Aborting to avoid modifying the wrong repository."
    exit 1
fi

# Check dependencies.
command -v git >/dev/null 2>&1 || {
    echo "git is not installed."
    exit 1
}

command -v gh >/dev/null 2>&1 || {
    echo "GitHub CLI (gh) is not installed."
    exit 1
}

# Verify GitHub authentication.
gh auth status

# Ignore disposable/generated files while retaining sources, PDFs,
# audio, transcripts, notes, images, and scripts.
cat > .gitignore <<'EOF'
# Local inventory
file-list.txt

# LaTeX build debris
*.aux
*.log
*.out
*.toc
*.fls
*.fdb_latexmk
*.synctex.gz

# Common temporary files
*~
*.tmp
.DS_Store
Thumbs.db
EOF

# Initialize repository.
git init
git branch -M main

# Stage everything except ignored files.
git add .

echo
echo "Files that will be committed:"
git status --short
echo

# Initial commit.
git commit -m "Initial Adversaria release"

# Create the public GitHub repository and configure origin.
gh repo create "$REPO" \
    --public \
    --description "$DESCRIPTION" \
    --source=. \
    --remote=origin

# Push main.
git push -u origin main

echo
echo "Repository pushed successfully."
echo "Enabling GitHub Pages from the root of main..."

# Enable GitHub Pages using main:/ as the publishing source.
#
# The Pages API can briefly return an error immediately after creation
# while GitHub finishes registering the new repository, so retry.
for attempt in {1..10}; do
    if gh api \
        --method POST \
        -H "Accept: application/vnd.github+json" \
        "/repos/{owner}/${REPO}/pages" \
        -f source[branch]=main \
        -f source[path]=/ \
        >/dev/null 2>&1
    then
        echo "GitHub Pages enabled."
        break
    fi

    if [ "$attempt" -eq 10 ]; then
        echo "Could not enable GitHub Pages automatically."
        echo "The repository itself was created and pushed successfully."
        echo "You can enable Pages later under Settings -> Pages."
        exit 1
    fi

    echo "Pages not ready yet; retrying in 3 seconds..."
    sleep 3
done

echo
echo "Repository:"
gh repo view --json url --jq '.url'

echo
echo "GitHub Pages:"
gh api "/repos/{owner}/${REPO}/pages" --jq '.html_url'

echo
echo "Publication complete."
