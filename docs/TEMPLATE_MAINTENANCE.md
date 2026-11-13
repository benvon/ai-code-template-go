# Template maintenance

This revision changes the default application shape. Existing version management
remains in place pending issue #22; task/toolchain consolidation is issue #23.

## Current ownership

maintenance/versions.yaml selects the Go language/toolchain, Go tools, and
selected Action/hook versions. scripts/maintenance synchronizes those pins.
Some manifest entries describe optional integrations and are retained for now.
Shared workflow internals belong to benvon/reusable-workflows and are selected
by an explicit SHA in this repository.

Discovery refreshes selected Go tools and pre-commit hooks. It does not discover
Go releases, Action releases, shared workflow revisions, or container images.
Dependabot also proposes Go module updates, including tools/go.mod. That overlap
can require reconciling the manifest; it is not a resolved single-owner model.

## Commands

- `make maintenance-update`: discover selected versions, synchronize, validate.
- `make maintenance-validate`: check managed files against the manifest.
- `make maintenance-tests`: test synchronization, drift detection, and updates.
- `make template-check`: run maintenance checks plus guardrails, adoption,
  and isolated recipe examples.

The hook configuration now lives in docs/recipes/editor-hooks. Maintenance
synchronizes that reference file, not an active root hook installation.

The scheduled write-capable maintenance workflow is restricted to the upstream
template repository. Generated projects must deliberately adopt their own
maintenance automation; Dependabot remains configured by default.

Review changes to go.mod, tools/go.mod/sum, mise.toml, workflows, the manifest,
and recipe assets. Run make ci-local and make template-check before merging.
If an update breaks compatibility, revert it and selectively reintroduce the
supported pins. Do not bypass failing checks or security controls.

## Follow-up boundaries

- #21: release orchestration; no release pipeline is enabled by this baseline.
- #22: one update owner and complete pin coverage.
- #23: local/CI tool consistency and shared workflow installation overhead.
- #25: required-check semantics and immutable Action dependencies.
- #26: downstream upgrade and file ownership policy.
