#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cp -R "${ROOT}" "${TMP_DIR}/repo"

(
  cd "${TMP_DIR}/repo"
  ./scripts/maintenance/sync_files.sh
  ./scripts/maintenance/validate.sh
)

# Drift check should fail.
(
  cd "${TMP_DIR}/repo"
  awk '{ if ($1 == "golangci-lint") { print "golangci-lint 0.0.1" } else { print } }' .tool-versions > .tool-versions.tmp
  mv .tool-versions.tmp .tool-versions
  if ./scripts/maintenance/validate.sh; then
    echo "expected validate.sh to fail with drift" >&2
    exit 1
  fi
)

echo "validate_test.sh passed" >&2
