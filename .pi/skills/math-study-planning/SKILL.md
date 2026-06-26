---
name: math-study-planning
description: Plan mathematics study from the active study pack, choose exercises, check edition/source notes, and update progress tracking. Use for chapter or section plans, exercise selection, exit checks, and progress-tracking work.
---

# Math Study Planning

Use this skill when the user asks for chapter or section planning, exercise selection, study status, exit checks, source verification, or progress tracking.

## Required Context

Read the relevant files before planning:

- `studies/active.md` to identify the active study pack.
- The active study pack's `profile.md` for the text, learner context, and study goals.
- The active study pack's `workflow.md` for the study loop.
- The active study pack's `state/progress.md` for status and covered-work boundaries.
- The active study pack's `source-priority.md` for source order.
- The active study pack's exercise index, edition notes, or verification notes when available.

Use `README.md` for repository layout and commands.

## Planning Policy

- Treat the active study pack as the source of text-specific policy.
- Prefer the study pack's primary exercise filter when one exists.
- Check edition/update notes before relying on a statement that may differ across editions.
- Use external solutions for feedback after an attempt, not as the starting point unless the user asks.
- Include computational checks only when they clarify the current covered material.

## Progress Updates

Update the active study pack's state files, such as `state/progress.md` and `state/code-exercises.md`, only when work is completed or meaningfully advanced. Keep updates factual and compact. Preserve the study pack's existing table/status conventions.
