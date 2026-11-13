# Project guidance

## General Guidelines

This repository starts as one runnable Go executable. Keep the application
module free of dependencies until a requirement justifies adding one.
Read README.md and docs/TEMPLATE_ADOPTION.md for the baseline contract.
Optional integrations live in docs/recipes; they are not application packages.

Use Conventional Commits for commits and PR titles. Sign commits. Preserve
unrelated work. Implementing a change does not authorize releases or deployment.

## Code Style

Use the Go version declared in go.mod and mise.toml. Format with `make fmt`.
Keep packages focused; add cmd/, internal/, or public packages when needed.
Prefer concrete types and the standard library. Profile before optimizing.
Use `any` rather than `interface{}` and follow Go naming conventions.

## Testing

- `make check`: formatting, lint, and unit tests for everyday edits.
- `make test`: tests with the race detector.
- `make build`: native executable at bin/app.
- `make ci-local`: complete application quality gate, including security checks.
- `make template-check`: adoption, recipe, guardrail, and maintenance tests.

Test meaningful behavior and failure paths. Use table tests and parallel tests
where they improve clarity and isolation. Coverage is diagnostic; this baseline
has no universal coverage percentage requirement.

## Error Handling

Check errors and add useful context with wrapping. Use errors.Is/errors.As
when comparing wrapped errors. Keep process exit decisions in main so behavior
can be tested without terminating the test process.

## Security

Never commit or log secrets. Treat external input as untrusted. Preserve
least-privilege workflow permissions. Run the applicable checks and report
unavailable or failed checks accurately. Consult SECURITY.md for reporting.

## Ownership

Application behavior lives in main.go until it needs separate packages.
Go tool pins live in tools/go.mod; maintenance/versions.yaml and the existing
maintenance scripts synchronize template pins. Do not hand-edit managed pins
without checking docs/TEMPLATE_MAINTENANCE.md. Shared workflow behavior belongs
in benvon/reusable-workflows; this repo selects an explicit workflow revision.

Instructions in recipes apply only after adopting that capability. Do not add
servers, database configuration, containers, or publishing automation by default.
