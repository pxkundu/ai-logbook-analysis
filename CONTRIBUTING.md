# Contributing to AI Logbook Analysis

Thank you for your interest in contributing to AI Logbook Analysis! This document provides guidelines and instructions for contributing to this project.

## Code of Conduct

Please read and follow our [Code of Conduct](CODE_OF_CONDUCT.md) to keep our community approachable and respectable.

## How to Contribute

### Reporting Bugs

1. Check if the bug has already been reported in the Issues section
2. Use the bug report template when creating a new issue
3. Include detailed steps to reproduce the bug
4. Include screenshots or error messages if applicable
5. Specify your environment (OS, browser, etc.)

### Suggesting Features

1. Check if the feature has already been suggested
2. Use the feature request template
3. Provide a clear description of the feature
4. Explain why this feature would be useful
5. Include any relevant examples or mockups

### Pull Requests

1. Fork the repository
2. Create a new branch for your feature/fix
3. Follow our coding standards
4. Write or update tests as needed
5. Update documentation
6. Submit a pull request

## Development Setup

### Prerequisites

- Python 3.9+
- Node.js 18+
- AWS CLI configured
- Docker (optional)
- Terraform 1.5+

### Local Development

1. Clone the repository:
   ```bash
   git clone https://github.com/pxkundu/ai-logbook-analysis.git
   cd ai-logbook-analysis
   ```

2. Set up the backend:
   ```bash
   cd backend
   python -m venv venv
   source venv/bin/activate  # Windows: .\venv\Scripts\activate
   pip install -r requirements.txt
   ```

3. Set up the frontend:
   ```bash
   cd frontend
   npm install
   ```

4. Set up infrastructure:
   ```bash
   cd infrastructure
   terraform init
   ```

### Running Tests

```bash
# Backend tests
cd backend
pytest

# Frontend tests
cd frontend
npm test
```

## Coding Standards

### Python
- Follow PEP 8 guidelines
- Use type hints
- Write docstrings for all functions
- Maximum line length: 88 characters

### JavaScript/TypeScript
- Follow ESLint configuration
- Use TypeScript for type safety
- Follow React best practices
- Use functional components with hooks

### Infrastructure
- Follow Terraform best practices
- Use consistent naming conventions
- Document all variables and outputs

## Documentation

- Update README.md for major changes
- Document new features in docs/
- Update API documentation
- Include inline code comments

## Commit Messages

Follow the Conventional Commits specification:
- feat: A new feature
- fix: A bug fix
- docs: Documentation changes
- style: Code style changes
- refactor: Code refactoring
- test: Adding or updating tests
- chore: Maintenance tasks

Example:
```
feat: add document validation service
fix: resolve S3 upload timeout issue
docs: update API documentation
```

## Review Process

1. All PRs require at least one review
2. CI/CD checks must pass
3. Code coverage should not decrease
4. Documentation must be updated
5. Tests must be included

## Getting Help

- Check the [documentation](docs/)
- Join our [Discord community](https://discord.gg/your-invite-link)
- Open an issue for questions

## License

By contributing, you agree that your contributions will be licensed under the project's MIT License. 