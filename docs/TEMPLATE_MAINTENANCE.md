# Template Maintenance Guide

This template uses a manifest-driven maintenance system to keep pinned versions aligned across tooling, workflows, and scripts.

## Ownership Model

Use two control planes to avoid update conflicts:

- Template control plane (this repository): `template-maintenance.yml` + `maintenance/versions.yaml`
- Downstream control plane (repos created from this template): Dependabot `gomod` updates

In this template repository, GitHub Actions/workflow pin updates are owned by template maintenance, not Dependabot.

## Source of Truth

`maintenance/versions.yaml` is authoritative for:

- Go language and toolchain versions
- local tool versions in `.tool-versions`
- GitHub Action versions used in workflows
- pre-commit hook revisions
- module versions referenced by setup scripts

## Weekly Automation

The workflow at `.github/workflows/template-maintenance.yml` runs:

- every Monday at 14:00 UTC
- on manual dispatch from the Actions tab

The workflow:

1. refreshes selected pinned versions (`update_versions.sh --discover-latest`)
2. synchronizes repository files from the manifest (`sync_files.sh`)
3. validates drift and pinning policy (`validate.sh`)
4. opens a PR with a maintenance checklist and risk summary

This workflow is responsible for:

- `.github/workflows/*.yml` action pin updates
- `.tool-versions`
- `.pre-commit-config.yaml`
- pinned tool/module versions referenced by scripts and Make targets

## Local Maintenance Commands

Run these from the repository root.

- `make maintenance-update` updates discovered versions and synchronizes all managed files
- `make maintenance-validate` checks that managed files match the manifest and rejects unpinned `latest`
- `make maintenance-dry-run` previews sync diffs without keeping local edits
- `make maintenance-tests` runs maintenance script tests

## Safe Version Bumps

Use one of these approaches:

1. Let weekly automation propose changes in a PR.
2. Apply explicit updates manually:
   - `./scripts/maintenance/update_versions.sh --set tools.govulncheck=1.1.5 --set go_modules.govulncheck_module=v1.1.5`
3. Sync and validate:
   - `./scripts/maintenance/sync_files.sh`
   - `./scripts/maintenance/validate.sh`

Always review generated diffs in:

- `go.mod`
- `.tool-versions`
- `.pre-commit-config.yaml`
- `.github/workflows/*.yml`
- `scripts/setup.sh`
- `Makefile`

## Rollback Procedure

If a maintenance update causes CI or release regressions:

1. revert the maintenance commit or PR
2. re-run `make maintenance-validate` to confirm drift-free state
3. selectively reintroduce safe version bumps via `--set`
4. open a follow-up maintenance PR with notes on the failed bump

## Troubleshooting

### `validate.sh` fails with drift

- Run `./scripts/maintenance/sync_files.sh` and inspect the diff.
- If the change is expected, commit it.
- If not expected, fix `maintenance/versions.yaml` first.

### `validate.sh` reports `latest` usage

- Replace `@latest` or `version: latest` with pinned versions.
- Re-run `make maintenance-validate`.

### Weekly maintenance PR is empty

- No upstream versions changed, or discovery could not resolve updates.
- Run workflow manually and inspect logs for discovery failures.

### A discovered bump breaks CI

- Revert that bump in `maintenance/versions.yaml`.
- Add a follow-up issue describing the incompatibility.
