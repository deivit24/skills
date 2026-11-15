# skills

Personal Claude Code skills. This repo lives directly in `~/.claude/skills`, so skills here are live as soon as they are saved.

Other skills in this folder (plugin- or tool-managed) are ignored via `.gitignore`.

## Skills

| Skill | What it does |
|---|---|
| [keep-sharp](keep-sharp/SKILL.md) | Learn-while-coding mode: you write core logic, AI hints and critiques tersely, AI writes boilerplate. |

## Add a skill

1. Create `<name>/SKILL.md` with `name` and `description` frontmatter.
2. Allow it in `.gitignore`: add `!<name>/` and `!<name>/**`.
3. Add a row to the table above and commit.
