# Install dependencies
install:
    uv sync

# Run the application
run *ARGS:
    uv run python main.py {{ARGS}}

# Format code
format *ARGS:
    uv run ruff format {{ARGS}}

# Lint code (use --fix to auto-fix)
lint *ARGS:
    uv run ruff check {{ARGS}}

# Type check
typecheck *ARGS:
    uvx ty check {{ARGS}}

# Run tests
test *ARGS:
    uv run pytest {{ARGS}}

# Run all checks
check: lint typecheck

# Clean up
clean:
    -sudo rm -rf .ruff_cache .mypy_cache .pytest_cache __pycache__

# Docker
build-docker:
    docker build -t python-template .

run-docker: 
    docker compose up

stop-docker:
    docker compose down

# Show help
help:
    just --list