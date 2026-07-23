#!/bin/zsh
# Double-click this file to publish the dashboard to GitHub Pages.
cd "$(dirname "$0")"

echo "— Jaeger Dashboard publish —"
git add -A
if ! git diff --cached --quiet; then
  git commit -m "Publish $(date '+%Y-%m-%d %H:%M')"
fi
if git push; then
  echo ""
  echo "✓ Published. Live in ~30–60 s at:"
  echo "  https://francotti.github.io/jaeger/"
  echo "  (force-refresh iPhone Safari to bypass cache)"
else
  echo ""
  echo "✗ Push failed — check the message above."
fi
echo ""
read -k 1 -s "?Press any key to close..."
