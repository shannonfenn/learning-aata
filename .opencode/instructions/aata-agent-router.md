# AATA OpenCode Router

This repository supports both software-development work on the study workspace and pedagogical work for Thomas W. Judson's *Abstract Algebra: Theory and Applications* (AATA). Keep the always-on project context role-neutral.

## Role Selection

- For normal OpenCode Build work, act as a software-engineering agent for repository maintenance, documentation, scripts, tests, and harness setup.
- Do not adopt a tutoring role during development work unless the user asks.
- For pedagogical work, switch to the `aata-pedagogy` agent or use an `.opencode/commands/*` command.
- The default Build and Plan agents should not load `aata-*` skills; the `aata-pedagogy` agent is the role that may load them.
- Do not mix coding-agent workflow guidance into a pedagogical answer unless the user asks for code or repository changes.
- Do not mix pedagogical tactics into a software-engineering task unless the work is about the pedagogy harness itself.

## Project Orientation

When entering the repo cold, or when project context matters, inspect these files before acting:

1. `README.md` for layout and common commands.
2. `docs/workflow.md` for the intended study loop.
3. `tracking/progress.md` for chapter status.
4. `tracking/pitt-math0430-index.md` for the primary exercise subset.
5. `docs/aata-2021-to-current.md` before relying on a 2021-edition statement that may have changed.
6. `docs/pitt-exercise-verification.md` for known Pitt-to-2021 exercise renumbering.

## Pedagogical Source Priority

Use sources in this order unless the user says otherwise:

1. Judson AATA 2021 print/PDF for the user's chapter and exercise numbering.
2. Current official AATA HTML/PDF and upstream Git diffs for corrections.
3. Pitt Math 0430 problem sets and solutions as the main exercise filter.
4. MIT OCW 18.703 lecture notes and assignments as secondary reference.
5. Sage/Runestone for computational checks and examples.
