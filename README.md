# skills

Personal collection of Claude Code skills.

## Layout

```
skills/
└── <skill-name>/
    └── SKILL.md
```

## Skills

| Skill | What it does |
|---|---|
| [keep-sharp](skills/keep-sharp/SKILL.md) | Learn-while-coding mode: you write core logic, AI hints and critiques tersely, AI writes boilerplate. |

## Install

```bash
./install.sh
```

Symlinks every skill in `skills/` into `~/.claude/skills/`, so edits here apply immediately. An existing non-symlink skill of the same name is moved to `<name>.bak` first.

## Add a skill

1. Create `skills/<name>/SKILL.md` with `name` and `description` frontmatter.
2. Add a row to the table above.
3. Run `./install.sh`.
