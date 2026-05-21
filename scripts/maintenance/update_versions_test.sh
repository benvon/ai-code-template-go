#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cp -R "${ROOT}" "${TMP_DIR}/repo"

(
  cd "${TMP_DIR}/repo"
  ./scripts/maintenance/update_versions.sh --set github_actions.actions_checkout=v0
  grep -Eq 'actions/checkout@v0' .github/workflows/template-maintenance.yml
)

echo "update_versions_test.sh passed" >&2
