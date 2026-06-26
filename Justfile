default:
    @just --list

# Run a Python exercise from the active study pack, e.g. `just py ch03_groups`
py name:
    uv run python studies/judson-aata/code/python/exercises/{{name}}.py

# Run a named exercise.
exercise name:
    uv run python studies/judson-aata/code/python/exercises/{{name}}.py

# Run Chapter 3 finite-group exercise.
ch03-groups:
    just exercise ch03_groups

# Run optional tests.
test:
    uv run pytest

# Run Python linting.
lint:
    uv run ruff check

# Run tests and linting.
check: test lint
