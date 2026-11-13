# Adopting the executable baseline

Every generated project starts as one native Go executable with no runtime
services or publication automation. Optional capabilities live in recipes.

## First checkout

1. Create a repository from the template and clone it.
2. Supply the Go toolchain declared in mise.toml.
3. Run `make init-template MODULE_PATH=github.com/<org>/<repo> PROJECT_NAME=<repo>`.
4. Run `make setup`, `make check`, `make test`, and `make build`.
5. Run `./bin/app` and confirm the greeting uses your project name.
6. Run `make ci-local` with dependency/vulnerability network access.

The initializer changes both module names, the executable name in its greeting,
and the README heading. It deliberately preserves upstream workflow references
and recipe examples. It is a small initializer, not a general project generator;
review its diff before committing. Broader bootstrap guarantees are tracked in
[issue #20](https://github.com/benvon/ai-code-template-go/issues/20).

## Ownership and repository settings

- Replace CODEOWNERS entries with maintainers of the new repository.
- Set the real security reporting channel in SECURITY.md.
- Review LICENSE and the contributor instructions.
- Require a PR and successful checks before merging to main, dismiss stale
  approvals, and restrict direct pushes according to your project policy.
- Run a first PR and select the actual emitted checks for quality and guardrails. The upstream-only
  scaffold job is skipped in generated repositories so projects can grow. Do not copy unverified status-check names.
- Verify Dependabot, secret scanning/push protection, dependency review, and
  optional code scanning availability for the repository's visibility/plan.
- Shared CI uses a pinned revision of benvon/reusable-workflows; verify access.

Conventional Commit title checks are read-only. There is no required release
label, automatic tag creation, registry login, or publication in the baseline.
No Codecov account, Docker daemon, database, or .env file is needed.

## Growing the project

Use docs/recipes/README.md to add capabilities deliberately. Keep one executable
at the root until a real package or additional command needs a different
layout. Library support is a recipe, not an initialization choice.

The scheduled template-maintenance job runs only in the upstream repository.
Reference recipes and existing maintenance scripts remain in generated copies
for now; downstream upgrades and ownership are tracked in issue #26. Dependabot
continues to propose application and tool-module updates. See the maintenance
guide for the known overlap with manifest synchronization.

## Troubleshooting

If tools cannot be downloaded, check the selected Go version and network access.
If a vulnerability scan cannot reach its database, report it as unavailable.
If CI cannot access the shared workflow, fix repository access or deliberately
adopt a local quality workflow with equivalent checks. Never grant write
permissions to untrusted PR code to make a check pass.
