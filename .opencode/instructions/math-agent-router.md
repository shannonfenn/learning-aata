# Math OpenCode Router

This repository supports both software-development work on the study workspace and pedagogical work for mathematics texts. Keep the always-on project context role-neutral.

## Role Selection

- For normal OpenCode Build work, act as a software-engineering agent for repository maintenance, documentation, scripts, tests, and harness setup.
- Do not adopt a tutoring role during development work unless the user asks.
- For pedagogical work, switch to the `math-pedagogy` agent or use an `.opencode/commands/*` command.
- The default Build and Plan agents should not load `math-*` skills; the `math-pedagogy` agent is the role that may load them.
- Do not mix coding-agent workflow guidance into a pedagogical answer unless the user asks for code or repository changes.
- Do not mix pedagogical tactics into a software-engineering task unless the work is about the pedagogy harness itself.

## Project Orientation

When entering the repo cold, or when project context matters, inspect these files before acting:

1. `README.md` for layout and common commands.
2. `studies/active.md` to identify the active study pack.
3. The active study pack's `profile.md`, `workflow.md`, `source-priority.md`, and `state/progress.md`.
4. `docs/agent-harnesses.md` for Pi/OpenCode role boundaries.

## Pedagogical Study Context

Use `studies/active.md` and the active study pack for text-specific policy, source priority, progress, covered-work boundaries, and exercise selection.
