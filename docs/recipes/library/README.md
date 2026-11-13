# Public Go library

Use this when another module should import the project's behavior. The default
remains an executable; there is no library choice during initialization.

## Adopt

Replace the root main package with a documented public package. The independent
testdata example contains a small API, external-package tests, and an executable
Go documentation example. Adapt its package/module identity to your project.
If a demonstration executable remains useful, move it under cmd/<name> and
update the build task to target that command. Otherwise remove the executable
build task and validate the library with `go build ./...`.

Document public API guarantees, supported Go versions, error semantics, and
compatibility policy. Add public packages by domain rather than creating an
empty pkg/ directory. Add internal packages for implementation details that
consumers should not import. Binary-release and container recipes are generally
unnecessary for a library.

## Verify and maintain

Run `go test -race ./...`, `go vet ./...`, and build a small independent consumer
module against the adopted API. The example's tests and ExampleHello are run by
scripts/recipes_test.sh. Before tagging module releases, define semantic
versioning and Go major-version module-path rules for your actual consumers.
