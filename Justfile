default:
    @just --list

# Run a Python exercise, e.g. `just py ch02`
py name:
    uv run python code/python/exercises/{{name}}.py

# Run the matching Rust example, e.g. `just rs ch02`
rs name:
    cargo run --example {{name}}

# Run both Python and Rust versions of an exercise.
exercise name:
    uv run python code/python/exercises/{{name}}.py
    cargo run --example {{name}}

# Run Chapter 2 Python and Rust exercises.
ch02:
    just exercise ch02

# Run Chapter 2 Python exercise.
py-ch02:
    just py ch02

# Run Chapter 2 Rust exercise.
rs-ch02:
    just rs ch02

# Run optional tests.
test:
    uv run pytest
    cargo test

# Run Python linting.
lint:
    uv run ruff check

# Run tests and linting.
check: test lint
