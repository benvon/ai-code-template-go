# Security policy

## Supported versions

The upstream template maintains main. Repositories created from it own their
application dependencies, supported releases, and security response policy.

## Reporting a vulnerability

Do not open public issues containing vulnerability details or secrets.
For this repository, use GitHub's Security tab and private vulnerability
reporting when available. If unavailable, obtain a private reporting channel
from the maintainer before disclosing details. Adopters must configure a real
security contact and an achievable response policy before accepting reports.

## Baseline controls

The quality workflow runs Gosec and govulncheck through `make ci-local`.
Dependabot proposes Go module updates. Dependency Review checks PR dependency
changes when the repository supports the feature; its existing availability
check can warn and skip analysis. A green workflow does not prove that this
optional analysis ran. See issue #25 for tightening this contract.

Configure required checks explicitly using docs/TEMPLATE_ADOPTION.md. Local
commands do not configure repository protection settings. Secret scanning and
push protection are repository/account features that adopters must verify.

CodeQL and additional scanning integrations are opt-in through the
security-analysis recipe. This does not remove the need to address the risks
of the application being built.

## Secure development

Never commit credentials or log sensitive data. Validate external input at its
trust boundary, check errors, preserve transport verification, and use least
privilege. Workflow checks use read-only permissions unless an explicitly
adopted integration requires more.

Run applicable checks and report unavailable scans accurately. No scanner or
coverage percentage substitutes for reviewing changed behavior and boundaries.
