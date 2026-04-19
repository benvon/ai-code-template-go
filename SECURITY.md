# Security Policy

## Supported Versions

| Version | Supported |
| ------- | --------- |
| main    | ✅ |
| latest release tag | ✅ |
| older releases | ❌ |

## Reporting a Vulnerability

Do not open public issues for vulnerabilities.

Use one of these private channels:

1. GitHub Security Advisory (preferred): `Security` tab -> `Report a vulnerability`
2. Maintainer security contact defined by your fork/organization

If you are adopting this template, replace this section with your real security contact and SLA.

## Response Expectations

- Initial acknowledgement: within 2 business days
- Triage and severity assignment: within 7 calendar days
- Critical fix target: within 30 calendar days

## Automated Security Controls

This template includes:

- Dependabot (`.github/dependabot.yml`)
- Dependency Review workflow (`.github/workflows/dependency-review.yml`)
- govulncheck in the shared quality workflow (`.github/workflows/quality.yml`)
- CodeQL analysis (`.github/workflows/codeql.yml`)

Blocking checks by default:

- Dependency Review (high severity)
- govulncheck job

Advisory checks by default:

- Additional static analysis or security scans you may add locally

## Secure Contribution Guidance

- Validate all input and handle errors safely.
- Avoid logging secrets, tokens, and personal data.
- Keep dependencies pinned and reviewed.
- Prefer least-privilege permissions in GitHub workflows.
