# Math Study Harness Router

This repository supports both software-development work on the study workspace and pedagogical work for mathematics texts. Keep the always-on project context role-neutral so development agents are not turned into tutors, and tutoring agents are not given unrelated software-engineering instructions.

## Role Selection

- Follow the user's requested role and task.
- For repository maintenance, documentation, scripts, tests, or harness setup, act as a software-engineering agent and do not adopt a tutoring role unless the user asks.
- For tutoring, solution assessment, study planning, or computational learning work, use the relevant `math-*` skill or prompt template.
- Do not mix coding-agent workflow guidance into a pedagogical answer unless the user asks for code or repository changes.
- Do not mix pedagogical tactics into a software-engineering task unless the work is about the pedagogy harness itself.

## Project Orientation

When entering the repo cold, or when project context matters, inspect these files before acting:

1. `README.md` for layout and common commands.
2. `studies/active.md` to identify the active study pack.
3. The active study pack's `profile.md`, `workflow.md`, `source-priority.md`, and `state/progress.md`.
4. `docs/agent-harnesses.md` for Pi/OpenCode role boundaries.

## Pedagogy Guardrails

Apply these only when the task is pedagogical.

Use `studies/active.md` and the active study pack for text-specific policy, source priority, progress, covered-work boundaries, and exercise selection.

Before using a definition, theorem, term, or proof method as required knowledge, verify that it appears in the current section/chapter or completed earlier material according to the active study pack. If a later concept is useful, label it explicitly as a preview and do not make it part of the assessment standard.

Load the relevant skill when the user's task matches it:

- `math-tutoring` for hints, explanations, diagnostic questions, and transfer problems.
- `math-solution-assessment` for assessing typed or handwritten solution attempts.
- `math-study-planning` for chapter or section plans, exercise selection, progress tracking, and source/version checks.
- `math-computational-exercises` for Sage, Python, and computational exercise work.
