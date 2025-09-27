# Modern Python Template

![Python](https://img.shields.io/badge/python-3.12+-blue.svg)
![uv](https://img.shields.io/badge/uv-package%20manager-4051B5)
![Ruff](https://img.shields.io/badge/code%20style-ruff-000000.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)
![Tests](https://github.com/yourusername/python-template/workflows/Test/badge.svg)
![Lint](https://github.com/yourusername/python-template/workflows/Lint/badge.svg)
![Type Check](https://github.com/yourusername/python-template/workflows/Type%20Check/badge.svg)

A fast, modern Python project template using the latest Rust-based tooling for maximum developer productivity.

## ✨ Features

- 🚀 **[uv](https://github.com/astral-sh/uv)** - Lightning-fast Python package manager
- 🔧 **[ruff](https://github.com/astral-sh/ruff)** - Extremely fast Python linter and formatter
- 🧪 **[ty](https://github.com/astral-sh/ty)** - Rust-based type checker (by Astral)
- 🐳 **Docker** support with live reload for development
- ⚡ **GitHub Actions** CI/CD with separate lint/typecheck/test workflows
- 📋 **[just](https://github.com/casey/just)** for task automation
- 🎯 **VS Code** integration with recommended extensions
- 🔒 **Python 3.12+** - Modern Python features

## 🚀 Quick Start

### Using this template

1. **Click "Use this template"** on GitHub or clone:
   ```bash
   git clone <your-repo-url>
   cd <your-project>
   ```

2. **Install dependencies:**
   ```bash
   just install
   ```

3. **Run the application:**
   ```bash
   just run
   ```

4. **Customize for your project:**
   - Update `pyproject.toml` with your project details
   - Rename/modify `main.py` 
   - Update this README

## 📋 Available Commands

Install [just](https://github.com/casey/just) for task automation:

```bash
# Development
just install          # Install dependencies
just run              # Run the application
just test             # Run tests with pytest
just format           # Format code with ruff
just lint             # Lint code with ruff (use --fix to auto-fix)
just typecheck        # Type check with ty
just check            # Run lint + typecheck
just clean            # Clean cache files

# Docker
just build-docker     # Build Docker image
just run-docker       # Run with docker-compose (live reload)
just stop-docker      # Stop docker services

# Help
just help             # Show all available commands
```

## 🛠️ Development Setup

### Prerequisites

- **Python 3.12+**
- **[uv](https://docs.astral.sh/uv/getting-started/installation/)** (package manager)
- **[just](https://github.com/casey/just#installation)** (task runner)
- **Docker** (optional, for containerization)

### Local Development

```bash
# Clone and setup
git clone <your-repo>
cd <your-project>
just install

# Start developing
just run              # Run locally
just test             # Run tests
just format           # Format before committing
just check            # Lint and type check
```

### VS Code Setup

This template includes VS Code configuration:

1. **Install recommended extensions** (VS Code will prompt you)
2. **Automatic formatting** on save with ruff
3. **Type checking** with ty/pyrefly
4. **Syntax highlighting** for justfiles and TOML

## 🐳 Docker Development

For containerized development with live reload:

```bash
just build-docker     # Build the image
just run-docker       # Start with live reload

# Your code changes will be reflected immediately
# No need to rebuild for code changes
```

## 🧪 Testing

This template includes pytest for testing:

```bash
# Run tests
just test

# Run tests with verbose output
just test-verbose

# Run tests with coverage
just test-cov
```

Add your tests in `test_*.py` files:

```python
# test_main.py
def test_basic():
    """Verify pytest is working."""
    assert True

def test_your_function():
    """Test your actual code."""
    from main import your_function
    assert your_function() == expected_result
```

## 🔄 CI/CD

This template includes GitHub Actions workflows:

- **Lint** (`lint.yaml`) - Fast code style checking
- **Type Check** (`typecheck.yaml`) - Type safety validation  
- **Test** (`test.yaml`) - Run your test suite

All workflows run on push/PR and provide fast feedback.

## 📁 Project Structure

```
.
├── .github/
│   └── workflows/           # CI/CD workflows
├── .vscode/
│   └── extensions.json      # Recommended VS Code extensions
├── .dockerignore           # Docker ignore rules
├── .gitignore              # Git ignore rules
├── Dockerfile              # Container definition
├── docker-compose.yaml     # Development container setup
├── justfile                # Task automation
├── main.py                 # Your application entry point
├── pyproject.toml          # Project configuration
├── README.md               # This file
└── uv.lock                # Dependency lock file
```

## ⚙️ Configuration

### Python Dependencies

Add dependencies to `pyproject.toml`:

```toml
[project]
dependencies = [
    "requests",
    "pydantic",
]

[dependency-groups]
dev = [
    "pytest",
    "ruff",
]
```

Then run:
```bash
just install
```

### Code Quality

Configuration in `pyproject.toml`:

- **ruff**: Linting and formatting rules
- **Python version**: 3.12+ required

## 🚢 Deployment

### Building for Production

```bash
# Build optimized Docker image
docker build -t your-app .

# Run in production mode
docker run -p 8000:8000 your-app
```

### Environment Variables

Create `.env` file for local development:
```bash
# .env (not committed to git)
DATABASE_URL=sqlite:///local.db
DEBUG=true
```

## 🤝 Contributing

1. **Fork the repository**
2. **Create a feature branch**: `git checkout -b feature/amazing-feature`
3. **Make your changes**
4. **Run quality checks**: `just check`
5. **Commit changes**: `git commit -m 'Add amazing feature'`
6. **Push to branch**: `git push origin feature/amazing-feature`
7. **Open a Pull Request**

## 📝 Customization

### For Your Project

1. **Update `pyproject.toml`**:
   ```toml
   [project]
   name = "your-project-name"
   description = "Your project description"
   authors = [{name = "Your Name", email = "your.email@example.com"}]
   ```

2. **Rename `main.py`** to match your application structure

3. **Add your dependencies**:
   ```bash
   uv add requests fastapi pytest
   ```

4. **Update this README** with your project-specific information

### Project Structure Options

Consider organizing larger projects:

```
src/
└── your_package/
    ├── __init__.py
    ├── main.py
    ├── models/
    ├── api/
    └── utils/
```

## 🏆 Why This Stack?

- **⚡ uv**: 10-100x faster than pip, handles virtual environments automatically
- **🦀 ruff**: 10-100x faster than flake8/black, handles both linting and formatting
- **🔍 ty**: Rust-based type checker by the same team as uv/ruff
- **🐳 Docker**: Consistent environments, easy deployment
- **📋 just**: Simple, fast alternative to make/npm scripts
- **🔄 GitHub Actions**: Industry standard CI/CD

All core tools are written in Rust for maximum performance and reliability.

## 📄 License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## 🙏 Acknowledgments

- [Astral](https://astral.sh/) for creating uv, ruff, and ty
- [Casey Rodarmor](https://github.com/casey) for just
- The Rust and Python communities for amazing tooling

---

**Happy coding!** 🎉

**Remember to:**
- Replace `yourusername/python-template` in the badge URLs with your actual GitHub username/repo
- The workflow badges will show green ✅ once your GitHub Actions are running