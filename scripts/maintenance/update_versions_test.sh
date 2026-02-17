#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cp -R "${ROOT}" "${TMP_DIR}/repo"

(
  cd "${TMP_DIR}/repo"
  ./scripts/maintenance/update_versions.sh --set go_modules.govulncheck_module=v9.9.9
  grep -Eq 'govulncheck@v9.9.9' scripts/setup.sh
)

echo "update_versions_test.sh passed" >&2
