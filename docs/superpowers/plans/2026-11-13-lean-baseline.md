# Lean executable baseline implementation plan

**Goal:** Implement #19 using the executable baseline approved in this chat.

**Architecture:** Keep one dependency-free root executable and the existing Go
tools module. Make services, libraries, containers, publication, coverage
services, CodeQL, and editor/hooks explicit recipes. Retain existing shared
quality CI and maintenance ownership until their dedicated follow-up issues.

**Scope:** No deployment, publication, upstream workflow edits, dependency
upgrades, or changes to live repository protections. Keep Conventional Commit
title checks read-only; remove automatic release labeling/tagging/publication.

## Tasks

- [x] Add behavior tests for the executable and adoption under a new identity.
- [x] Reduce the root application to a tested greeting and error handling.
- [x] Remove the default HTTP/configuration/container/release integrations.
- [x] Reduce Make tasks to native build, format, check, race tests, and full CI;
      retain explicit maintainer tasks without redesigning update ownership.
- [x] Add optional recipes with isolated Go examples and opt-in assets.
- [x] Align README, AGENTS, contribution/security/adoption/maintenance guidance.
- [x] Verify checks, recipes, maintenance, links, and a generated executable.

## Review focus

- Initializing a new module must build/run without the original import path.
- A failed output write must produce an error, not a false success.
- Optional Go examples must not join the application's package graph.
- Generated projects must not automatically tag or publish artifacts.
- Maintenance checks must tolerate integrations moved into recipes.

## Validation

Run `make check`, `make test`, `make build`, `make template-check`, and
`make ci-local`. Confirm `go list ./...` selects only the root application,
review active workflow permissions, and report network/tool limitations.

## Results

- `make check`, `make test`, and `make build` passed.
- `make template-check` passed, including generated-project lint, tests, build,
  greeting verification, isolated recipe examples, and maintenance regression tests.
- `make ci-local` passed with network access. Gosec reported zero issues and
  govulncheck reported zero reachable vulnerabilities. Uncalled advisories in
  the selected toolchain remain a reason to complete the update-policy work.
- GoReleaser recipe configuration validated with installed GoReleaser 2.20.0.
- YAML parsing, shell syntax, local Markdown links, and `git diff --check` passed.
- Independent review found and confirmed fixes for downstream scaffold CI
  restrictions and binary-publisher permissions; no high-impact findings remain.
- Hosted Actions, container execution, and artifact publication were not run.
