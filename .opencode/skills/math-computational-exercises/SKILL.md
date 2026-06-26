---
name: math-computational-exercises
description: Build and verify computational mathematics exercises for the active study pack using Sage and uv-managed Python. Use for computational examples, coding exercises, tests, and code recommendations tied to covered concepts.
---

# Math Computational Exercises

Use this skill when the user asks for Sage examples, Python exercises, computational checks, tests, or code recommendations related to the active mathematics study pack.

## Required Context

Before coding, check:

- `studies/active.md` to identify the active study pack.
- The active study pack's `profile.md`, `state/progress.md`, and `state/code-exercises.md` when present.
- `README.md` and `code/README.md` for repository layout and commands.
- `pyproject.toml` for Python environment and tooling.

## Code Policy

- Python is managed by `uv`; run Python commands with `uv run`.
- Prefer runnable exercise files over package-style code.
- Put Python exercises in `code/python/exercises/` and run them directly with `uv run python`.
- Add tests only when they sharpen mathematical feedback, such as testing an invariant over many inputs.
- Keep text- or chapter-specific code direct until repetition justifies abstraction.
- Recommend coding exercises only when they directly reinforce the active study pack's covered concepts.
- Defer programs that mainly exercise later definitions, and state where they belong in the active text.

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
studies/judson-aata/scripts/update_aata_diff.sh
```

If a tool is missing, report that explicitly and continue with the parts that can be verified.

## Covered-Work Discipline

Keep computational examples and recommendations scoped to the current section/chapter and completed earlier material unless the user asks for a preview. If an implementation naturally belongs later in the active text, label it as deferred or preview material.
