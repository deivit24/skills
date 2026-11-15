# skills

My personal Claude Code skills. The first one, **keep-sharp**, is a compromise between "AI writes everything" and "no AI at all."

## Why I started this

I started journaling about AI, and one question kept coming back: *have I gotten dumber?*

At first AI felt awesome, like a little helper I pay almost nothing. Then it started to feel different. I was taking advantage of it at the expense of my own brain, and it was so easy that I *felt* productive. I'd get a task, hand it to AI, and boom, done. It passed the criteria, it even wrote the tests. I was just happy that it worked.

But sometimes working isn't good enough.

- **"It works" is a low bar.** AI wrote the tests, the tests pass, and I almost never read what they actually assert. Maybe two or three times, ever. Edge cases slip through.
- **Teams drift.** Everyone's AI follows a different style, and the repo fills up with spaghetti and duplicated code. A shared style-guide skill helps, but it doesn't fix it.
- **Review can't keep up.** PRs now touch far more lines and files than a human can review properly. That's how you get a lot of "LGTM."
- **Production bugs get plastered over.** When a P1 shows up, the fix is more AI, patching like a bandage on something that needs stitches.

So how do you slow down while still being productive and not introducing issues?

Two answers I ruled out:

- **Stopping AI, or using none, isn't it.** AI is useful, and humans introduce bugs too.
- **More AI isn't it either.** The problems compound.

What I'm left with is this: when you write the core logic yourself, you're intimate with the code. You know where the bugs are. Coding by hand may become a novelty, like cooking from scratch or running when you could drive, and I think programmers will miss it.

So I want a workflow where I can use AI, keep learning, keep my productivity, and save tokens while I'm at it.

## Skills

| Skill | What it does |
|---|---|
| [keep-sharp](skills/keep-sharp/SKILL.md) | A hybrid learn-while-coding mode. **You** write the core logic. AI gives hints and terse critiques. AI writes only boilerplate. |

### keep-sharp in short

Three lanes:

- **Core:** logic you should own. The AI gives a hint or outline, never the solution. You write it.
- **Assist:** you wrote code and want feedback. The AI replies tersely with `BUG`, `EDGE`, `MISS` and `BETTER`.
- **Delegate:** boilerplate, config, migrations, test scaffolding. The AI writes it fully, with no lecture.

A few light habits go with it:

- Predict the result before running the code.
- Answer one "explain it back" question after AI-written code.
- Form a debugging hypothesis before the AI hands you the fix.

Replies are deliberately terse to save tokens. You can override it at any time with "just do it," and it will. The goal is friction only where learning happens, and it should never block shipping.

When you're writing Python, it also leans on the `python-design-patterns` skill if you have it, and works fine without it.

## Install

With [skills.sh](https://skills.sh):

```bash
npx skills add deivit24/skills --skill keep-sharp
```

Or manually: clone this repo and run `./install.sh`, which symlinks each skill into `~/.claude/skills/`. Edits in the repo apply immediately.

## Adding skills

Each skill lives in its own folder under `skills/` with a `SKILL.md` that has `name` and `description` frontmatter. Add a row to the table above, then run `./install.sh`.
