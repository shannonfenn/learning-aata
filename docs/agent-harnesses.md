# Agent Harnesses

This repo uses v0 CLI/app harness configuration only. Do not build a custom tutoring UI, orchestration service, or agent ecosystem until the plain Pi and OpenCode setups hit a clear capability limit.

## Design Goal

Keep role instructions separated:

- Software-engineering agents should be able to work on the repository without being turned into mathematics tutors.
- Pedagogical agents should be able to tutor, assess solutions, plan study, and support computational exercises without carrying unrelated coding-agent process instructions.
- Repository-root instructions should stay neutral and route to role-specific skills, commands, or agents.
- Do not reintroduce `AGENTS.md` for this project unless the goal changes to cross-harness always-on instructions.

## Pi

Pi uses:

- `.pi/APPEND_SYSTEM.md` for neutral role routing and project orientation.
- `.pi/skills/*/SKILL.md` for generic mathematics pedagogical roles.
- `.pi/prompts/*.md` for common tutoring and planning prompts.

For development work, run Pi normally from the repository root and ask for the development task. For pedagogy, use the relevant prompt template or skill command, such as `/hint`, `/assess-solution`, `/chapter-plan`, `/exit-check`, `/transfer-problem`, or `/skill:math-tutoring`.

## OpenCode

OpenCode uses:

- `opencode.jsonc` for OpenCode project configuration.
- `.opencode/instructions/math-agent-router.md` for neutral role routing and project orientation.
- `.opencode/agents/math-pedagogy.md` as the explicit pedagogical primary agent.
- `.opencode/skills/*/SKILL.md` for generic mathematics pedagogical roles.
- `.opencode/commands/*.md` for common tutoring and planning commands.

For development work, use the default Build agent. It should not load the pedagogical skills. For pedagogy, switch to the `math-pedagogy` agent or use one of the OpenCode commands: `/hint`, `/assess-solution`, `/chapter-plan`, `/exit-check`, or `/transfer-problem`.

## Study Packs

The generic pedagogy roles read `studies/active.md` and then use the active study pack for text-specific policy, source priority, workflow, progress, exercise indexes, and edition notes. Add new mathematics texts under `studies/<slug>/` rather than hard-coding text-specific behavior into harness skills.

## Running Location

For v0, run Pi or OpenCode with the repository root as the working directory so project-local resources are discovered automatically. If launching from elsewhere, point the tool at this repository or use the harness-specific mechanism for selecting the project working directory.

## V1 Boundary

Consider a v1 harness only if the CLI/app setup cannot support a required workflow, such as persistent learner state outside the repo, structured assessment records, cross-session scheduling, or more reliable automatic role selection than prompts, skills, and native OpenCode agents can provide.
