# Coverage reporting

Use coverage to find untested behavior. Add an external service only when its
reporting or review integration is useful to the project.

## Adopt

Generate a local report first:

```sh
go test -race -coverprofile=coverage.out ./...
go tool cover -func=coverage.out
go tool cover -html=coverage.out
```

If choosing Codecov, explicitly enable the shared quality workflow's upload
input, set coverage_file to coverage.out, and change quality_command to generate
that file. Configure authentication according to the chosen integration and
verify uploads from PRs. Do not grant a write token to untrusted PR code.

## Verify and maintain

Inspect the uploaded commit and report contents. Document exclusions and any
threshold with a reason; coverage of helper functions does not demonstrate
startup, adoption, or release correctness. Maintain account permissions and
check behavior when the upload service is unavailable.
