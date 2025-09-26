# Install dependencies
install:
    uv sync

# Run the application
run:
    uv run python main.py

# Format code
format:
    uv run ruff format .

# Lint code
lint:
    uv run ruff check .

# Fix linting issues
fix:
    uv run ruff check --fix .

# Type check
typecheck:
    uvx ty check .

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