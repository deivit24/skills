#!/usr/bin/env bash
# Symlink each skill folder in this repo into ~/.claude/skills
set -euo pipefail

repo="$(cd "$(dirname "$0")" && pwd)"
dest="${CLAUDE_SKILLS_DIR:-$HOME/.claude/skills}"
mkdir -p "$dest"

for skill in "$repo"/*/SKILL.md; do
  dir="$(dirname "$skill")"
  name="$(basename "$dir")"
  target="$dest/$name"
  if [ -L "$target" ]; then
    rm "$target"
  elif [ -e "$target" ]; then
    echo "skip $name: $target exists and is not a symlink" >&2
    continue
  fi
  ln -s "$dir" "$target"
  echo "linked $name"
done
