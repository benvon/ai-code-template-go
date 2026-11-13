# Expanded security analysis

Baseline CI retains Gosec, govulncheck, dependency updates, and supported
Dependency Review. Add analysis according to the application's boundaries.

## Adopt

Review repository eligibility, enable code scanning, and copy codeql.yml here
to .github/workflows/codeql.yml. Review schedules, permissions, and selected
Action revisions. Configure required checks only after observing a real PR run.
Add other scanners when they cover relevant risks beyond the baseline.

## Verify and maintain

Confirm a scan uploaded results for the intended commit and that missing
permissions or unsupported features have visible outcomes. Decide which results
block merges and document exceptions with their rationale. Maintain the scanner
and Action versions; do not disable security checks to make CI pass.
