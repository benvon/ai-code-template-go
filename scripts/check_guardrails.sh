#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"

required_files=(
  "${ROOT}/AGENTS.md"
  "${ROOT}/.github/pull_request_template.md"
  "${ROOT}/maintenance/versions.yaml"
)

for file in "${required_files[@]}"; do
  if [ ! -f "${file}" ]; then
    echo "required guardrail file missing: ${file}" >&2
    exit 1
  fi
done

required_agent_sections=(
  "## General Guidelines"
  "## Code Style"
  "## Testing"
  "## Error Handling"
  "## Security"
)

for section in "${required_agent_sections[@]}"; do
  if ! grep -Fq "${section}" "${ROOT}/AGENTS.md"; then
    echo "AGENTS.md missing section: ${section}" >&2
    exit 1
  fi
done

required_pr_fields=(
  "AI used?"
  "Human-verified tests run"
  "Security-sensitive areas touched"
)

for field in "${required_pr_fields[@]}"; do
  if ! grep -Fq "${field}" "${ROOT}/.github/pull_request_template.md"; then
    echo "pull request template missing field: ${field}" >&2
    exit 1
  fi
done

echo "guardrail checks passed"
