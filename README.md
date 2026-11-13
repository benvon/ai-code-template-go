# ai-code-template-go

A lean starting point for Go projects developed with people and coding agents.
It starts as one runnable executable with no application dependencies.

## Start a project

Create a repository using this template, clone it, and initialize its identity:

```sh
make init-template MODULE_PATH=github.com/your-org/your-project PROJECT_NAME=your-project
make setup
make check
make test
make build
./bin/app
```

Install the Go version in [mise.toml](mise.toml) with your existing mise setup,
or supply that version on PATH. Go-managed tools are pinned in tools/go.mod.
`make setup` downloads dependencies; it does not install system tools or hooks.
Git, Bash, Make, and standard Unix utilities are required for template scripts.

Follow the [adoption checklist](docs/TEMPLATE_ADOPTION.md) to configure ownership,
security reporting, and required GitHub checks.

## What every project inherits

| Component | Purpose |
| --- | --- |
| main.go and main_test.go | A working executable and behavior/error-path tests |
| go.mod | Application dependencies, initially standard library only |
| tools/go.mod and tools/go.sum | Development tools isolated from application dependencies |
| mise.toml | Selected Go toolchain |
| Makefile | The same build and quality commands locally and in CI |
| GitHub quality and guardrail workflows | Verification and read-only PR title checks |
| Dependabot and dependency review | Dependency updates and supported dependency-risk checks |
| AGENTS.md | Repository context, commands, and authority boundaries |
| Contribution, security, and issue/PR guidance | A small collaboration contract |

The entrypoint stays at the module root. Add cmd/ when multiple executables or
application organization justify it; add internal/ for private packages and
public packages only when they are actually needed.

## Development

| Command | Result |
| --- | --- |
| make fmt | Format application Go packages |
| make check | Verify formatting, lint, and run unit tests |
| make test | Run tests with the race detector |
| make build | Build the native executable at bin/app |
| make ci-local | Run formatting, lint, race tests, build, Gosec, govulncheck, and module-tidiness checks |
| make template-check | Test this template's adoption, recipes, guardrails, and maintenance |

`make ci-local` is the application quality gate. It needs access to dependency
and vulnerability services. Report failed or unavailable checks; do not treat
an offline scan as a successful scan. Coverage is available through Go's test
flags when useful; the baseline has no external coverage service or percentage
threshold. Cross-platform builds are part of the release recipe.

## Optional capabilities

[Recipes](docs/recipes/README.md) explain when to add a CLI, HTTP service,
library, binary releases, containers, local dependencies, coverage reporting,
expanded security analysis, observability, or editor/hooks integration.
No server, database configuration, container image, or release is enabled by
default. Building runs locally; publication requires deliberate adoption of a
release recipe. Conventional Commit PR titles do not create tags or releases.

Recipes remain reference material in this revision. Their Go examples live
under testdata in isolated modules, outside the application's package graph.
You can also consult the [upstream recipes](https://github.com/benvon/ai-code-template-go/tree/main/docs/recipes).
A downstream update/ownership process is tracked separately in
[issue #26](https://github.com/benvon/ai-code-template-go/issues/26).

## Template maintenance

The existing manifest and maintenance scripts remain for template maintainers;
see [maintenance guidance](docs/TEMPLATE_MAINTENANCE.md). Scaffold-invariant CI and the scheduled maintenance
workflow are restricted to the upstream template repository. Generated projects
retain Dependabot and can deliberately choose their own maintenance policy.
Update ownership and task/toolchain consolidation are follow-up work; this
baseline does not silently change those policies.

## License

[Apache License 2.0](LICENSE). Review license and attribution requirements when
adopting the template.
