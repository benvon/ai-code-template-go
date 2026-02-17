# Template Adoption Guide

This checklist helps teams safely bootstrap a new repository from this template.

## 10-Minute Setup Checklist

1. Create repository from template.
2. Run:
   - `make init-template MODULE_PATH=github.com/<org>/<repo> PROJECT_NAME=<repo>`
3. Run:
   - `go mod tidy`
   - `make maintenance-validate`
   - `make ci-local`
4. Set branch protections for `main` with required checks:
   - `Test`
   - `Lint`
   - `Vulnerability Check`
   - `Maintenance Validate`
   - `Policy Checks`
5. Configure security reporting contact in `SECURITY.md`.
6. Enable GitHub features:
   - Dependabot
   - Code scanning alerts
   - Secret scanning

## Required Repository Settings

- Require pull request before merge.
- Require status checks to pass.
- Dismiss stale approvals on new commits.
- Restrict who can push to `main`.

## Update Ownership (Template vs Downstream)

- Template concern: scaffolding/toolchain/workflow pin updates are managed by `template-maintenance.yml`.
- Downstream concern: project dependency updates are managed by Dependabot (`gomod`).

By default, this template keeps Dependabot focused on Go modules only. This avoids conflicts with template-maintenance PRs that also touch workflow/tooling versions.

If your downstream repo wants independent workflow action updates, you can opt in by adding a `github-actions` updater block in your repo-specific Dependabot config after adoption.

## First PR Acceptance Criteria

- CI workflows all pass.
- Guardrails workflow passes.
- No `@latest` in workflows/scripts.
- No TODO/FIXME additions without issue links.
- README and AGENTS updated for project specifics.

## Troubleshooting

### `maintenance-validate` fails

Run `./scripts/maintenance/sync_files.sh` and inspect changes.

### Coverage check fails

Improve tests or lower threshold intentionally via:

- `COVERAGE_THRESHOLD=<value> make coverage-check`

### Guardrails fail on PR body

Use sections from `.github/pull_request_template.md` and keep headers intact.
