# Contributing

Describe the problem and desired result before making a substantial change.
For template changes, consider what every new repository would inherit.

## Workflow

1. Create a feature branch and keep unrelated changes separate.
2. Make the smallest maintainable change and add behavior tests where needed.
3. Run `make check`, `make test`, and `make build` during development.
4. Run `make ci-local` before review, plus `make template-check` for scaffold,
   recipe, workflow, or maintenance changes.
5. Sign commits and use Conventional Commits, such as `feat: add a command`.
6. Open a PR with the problem, resulting behavior, and exact verification results.

Use `make setup` to download pinned tools after supplying the Go version from
mise.toml. Optional editor settings and hooks are in docs/recipes/editor-hooks.
Do not install a parallel global toolchain just to run the checks.

## Scope and review

The baseline is a runnable executable. Services, libraries, publishing, and
other integrations are deliberate recipe adoptions. Keep package structure
proportional to the project and explain new dependencies.

Tests should exercise behavior and meaningful failure paths. Prefer isolated
fixtures; use parallel tests when they do not share mutable state. Document
unavailable checks without claiming they passed.

PR titles use Conventional Commits. Title validation is read-only and does not
release artifacts. Release or deployment needs explicit authorization.

Report sensitive vulnerabilities through the channels in SECURITY.md.
