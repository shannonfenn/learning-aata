---
name: aata-code-exercises
description: Build and verify Sage and Python exercises for Judson AATA using uv-managed Python. Use for computational examples, coding exercises, tests, and code recommendations tied to covered algebra concepts.
---

# AATA Code Exercises

Use this skill when the user asks for Sage examples, Python exercises, computational checks, tests, or code recommendations related to AATA study.

## Required Context

Before coding, check:

- `README.md` for repository layout and commands.
- `docs/workflow.md` for the coding loop.
- `tracking/progress.md` for covered chapters and current likely chapter.
- `tracking/code-exercises.md` for code exercise status.
- `pyproject.toml` for Python environment and tooling.

## Code Policy

- Python is managed by `uv`; run Python commands with `uv run`.
- Prefer runnable exercise files over package-style code.
- Put Python exercises in `code/python/exercises/` and run them directly with `uv run python`.
- Add tests only when they sharpen mathematical feedback, such as testing an invariant over many inputs.
- Keep chapter-specific code direct until repetition justifies abstraction.
- Recommend coding exercises only when they directly reinforce the current chapter's covered concepts.
- Defer programs that mainly exercise later definitions, and state which later chapter they belong to.

## Local Commands

Use whichever commands are available in the environment:

```sh
uv sync
just ch02
just exercise ch02
just test
just check
uv run python code/python/exercises/ch02.py
uv run pytest
uv run ruff check
scripts/update_aata_diff.sh
```

If a tool is missing, report that explicitly and continue with the parts that can be verified.

## Covered-Work Discipline

Keep computational examples and recommendations scoped to the current chapter and completed earlier chapters unless the user asks for a preview. If an implementation naturally belongs to a later chapter, label it as deferred or preview material.
