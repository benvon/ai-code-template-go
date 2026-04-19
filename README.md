# ai-code-template-go

A template repo that's useful for Go code to be built with the help of agentic AI.

## Features

- ✅ Comprehensive CI/CD pipeline with GitHub Actions
- ✅ Automated releases with GoReleaser
- ✅ Cross-platform builds (Linux, macOS, Windows on amd64 and arm64)
- ✅ Security scanning with CodeQL, Dependency Review, and govulncheck
- ✅ Code quality checks with golangci-lint
- ✅ Dependency management with Dependabot
- ✅ Test coverage reporting
- ✅ Docker containerization with multi-stage builds
- ✅ Docker Compose for local development
- ✅ Pre-commit hooks for code quality
- ✅ VS Code configuration for Go development
- ✅ Comprehensive project structure examples
- ✅ Environment configuration management
- ✅ Setup and template initialization scripts
- ✅ API documentation and examples

## Getting Started

1. **Clone and customize**:
   ```bash
   # Clone this template
   git clone https://github.com/benvon/ai-code-template-go.git your-project-name
   cd your-project-name

   # Initialize module path and project naming
   make init-template MODULE_PATH=github.com/your-username/your-project-name PROJECT_NAME=your-project-name
   ```

2. **Install dependencies**:
   ```bash
   go mod tidy
   ```

3. **Run tests**:
   ```bash
   go test ./...
   ```

4. **Build locally**:
   ```bash
   go build -o ./bin/your-project-name ./
   ```

## Release Process

This project uses GoReleaser for automated releases. When you push a supported semantic version tag, it will:

1. Build binaries for multiple platforms (Linux, macOS, Windows on amd64 and arm64)
2. Create GitHub releases with changelogs
3. Generate checksums
4. Upload release artifacts

### Creating a Release

1. **Tag your release**:
   ```bash
   # Create and push a tag
   git tag -a v1.0.0 -m "Release v1.0.0"
   git push origin v1.0.0
   ```

2. **Supported tag formats**:
   - `v1.0.0` - Standard release
   - `v1.0.0-beta.1` - Pre-release
   - `v1.0.0-rc.1` - Release candidate

3. **The release workflow will**:
   - Run all tests
   - Build binaries for:
     - Linux (amd64, arm64)
     - macOS (amd64, arm64)
     - Windows (amd64, arm64)
   - Create GitHub release with:
     - Release notes
     - Binary downloads
     - Checksums
     - Changelog

### Binary Naming Convention

Released binaries follow this pattern:
```
ai-code-template-go_v1.0.0_Linux_x86_64.tar.gz
ai-code-template-go_v1.0.0_Darwin_arm64.tar.gz
ai-code-template-go_v1.0.0_Windows_x86_64.zip
```

### Version Information

Built binaries include version information accessible via:
```bash
./your-binary --version
```

This displays:
- Version number
- Git commit hash
- Build date
- Built by (goreleaser)

## Configuration Files

- `.goreleaser.yml` - GoReleaser configuration for builds and releases
- `.github/workflows/quality.yml` - Pull request and main-branch quality gate
- `.github/workflows/release-policy.yml` - PR title validation and release label management
- `.github/workflows/release.yml` - Release pipeline
- `.github/workflows/codeql.yml` - CodeQL static analysis
- `.github/workflows/dependency-review.yml` - Dependency risk checks on PRs
- `.github/workflows/guardrails.yml` - AI and policy guardrails
- `.golangci.yml` - Linter configuration
- `.github/dependabot.yml` - Dependency update configuration
- `Dockerfile` - Multi-stage Docker build configuration
- `docker-compose.yml` - Local development environment
- `.pre-commit-config.yaml` - Pre-commit hooks configuration
- `.vscode/settings.json` - VS Code Go development settings
- `.vscode/extensions.json` - Recommended VS Code extensions
- `.env.example` - Environment variables template
- `maintenance/versions.yaml` - Single source of truth for pinned template versions
- `docs/TEMPLATE_MAINTENANCE.md` - Template maintenance and automation guide

## Development

This project includes several CI checks:
- **Tests**: Unit tests with race detection and coverage
- **Linting**: golangci-lint with multiple linters enabled
- **Security**: Gosec security scanner and govulncheck
- **Builds**: Cross-platform build verification
- **Dependencies**: Go mod tidy verification

The normalized required checks for `main` are `quality / quality` and `release-policy / release-policy`.

### Project Structure

```
ai-code-template-go/
├── cmd/                    # Application entry points
│   └── server/            # HTTP server application
├── internal/               # Private application code
│   ├── config/            # Configuration management
│   ├── handlers/          # HTTP request handlers
│   └── models/            # Data models
├── pkg/                    # Public libraries
├── api/                    # API definitions
├── docs/                   # Documentation
├── scripts/                # Build and deployment scripts
├── examples/               # Usage examples
└── .env.example           # Environment variables template
```

### Docker Development

```bash
# Build and run with Docker
make docker-build
make docker-run

# Or use Docker Compose for local development
make docker-compose-up
make docker-compose-down
```

### Pre-commit Hooks

This project includes pre-commit hooks for code quality:

```bash
# Install pre-commit hooks
pre-commit install

# Run manually
pre-commit run --all-files
```

### Template Maintenance

Use manifest-driven maintenance commands to keep pinned versions consistent:

```bash
make maintenance-update
make maintenance-validate
make maintenance-tests
```

See `docs/TEMPLATE_MAINTENANCE.md` for weekly automation behavior, rollback guidance, and troubleshooting.
See `docs/TEMPLATE_ADOPTION.md` for branch protection and rollout checks.

### VS Code Integration

VS Code configuration is included for optimal Go development experience. The recommended extensions will be automatically suggested when opening the project.

## License

This project is licensed under the Apache License 2.0 - see the [LICENSE](LICENSE) file for details.
