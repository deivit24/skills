#!/usr/bin/env bash
set -euo pipefail

repo="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$dest"

for dir in "$repo"/skills/*/; do
  name="$(basename "$dir")"
  target="$dest/$name"
  if [ -L "$target" ]; then
    rm "$target"
  elif [ -e "$target" ]; then
    mv "$target" "$target.bak"
    echo "backed up $target -> $target.bak"
  fi
  ln -s "${dir%/}" "$target"
  echo "linked $name"
done
