# Code Exercises

This folder is script-first. The goal is to make AATA coding exercises easy to write, run, and inspect.

## Python

Put runnable Python exercise files in `code/python/exercises/`.

Run one with `just`:

```sh
just py-ch02
just py ch02
```

Or run it directly:

```sh
uv run python code/python/exercises/ch02.py
```

If a computation has a useful mathematical invariant, add an optional test in `code/python/tests/` and run:

```sh
uv run pytest
```

Tests are tests. They are not the point of the repo, and they are not a place to do exercises. Use small pytest/Hypothesis files when they sharpen feedback, such as verifying Bezout's identity for many inputs; otherwise ignore the folder and just run the exercise script.

## Naming

Use chapter-prefixed names so the mapping is obvious:

- `ch02.py`
- `test_ch02.py`

The learner-facing command should still be the same exercise name:

```sh
just ch02
just exercise ch02
```
