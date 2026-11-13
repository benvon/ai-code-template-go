# Optional recipes

Start with the executable baseline. Add capabilities when application or delivery
requirements justify their dependencies and maintenance.

| Recipe | Adds | Decisions you own |
| --- | --- | --- |
| [CLI](cli/README.md) | Flags, help, exit/error conventions | Whether a CLI framework is needed |
| [HTTP service](http-service/README.md) | Lifecycle, timeouts, health, logging | API, authentication, configuration, operating environment |
| [Library](library/README.md) | Public Go API and examples | Compatibility and supported consumers |
| [Binary releases](binary-releases/README.md) | Archives and explicit publication | Platforms, versions, release authority |
| [Containers](containers/README.md) | A minimal runtime image | Architecture, runtime assets, registry/deployment |
| [Local dependencies](local-dependencies/README.md) | Compose for development services | Which external services are actually needed |
| [Coverage](coverage/README.md) | Reports and optional upload | Useful thresholds and account integration |
| [Security analysis](security-analysis/README.md) | CodeQL and additional analysis | Repository support and required checks |
| [Observability](observability/README.md) | Logging/metrics/tracing decisions | Backends, privacy, sampling, operational cost |
| [Editor and hooks](editor-hooks/README.md) | Optional editor recommendations and hooks | Contributor tools and local automation |

The CLI, HTTP, and library examples are independent modules under testdata.
`make template-check` tests/builds them and verifies adoption of the baseline.
They do not appear in the application's `go list ./...` or ship in its binary.
Container execution and artifact publication require their own target-environment
validation after adoption; local Go tests do not establish those results.

Adopt files explicitly and review the resulting diff. Recipes are not enabled
by copying this repository. Keep application-specific instructions and tests in
the project; upstream recipe updates do not automatically overwrite them.
