default:
    @just --list

# Run a Python exercise, e.g. `just py ch02`
py name:
    uv run python code/python/exercises/{{name}}.py

# Run a named exercise.
exercise name:
    uv run python code/python/exercises/{{name}}.py

# Run Chapter 2 Python exercise.
ch02:
    just exercise ch02

# Run Chapter 2 Python exercise.
py-ch02:
    just py ch02

# Run optional tests.
test:
    uv run pytest

# Run Python linting.
lint:
    uv run ruff check

# Run tests and linting.
check: test lint
