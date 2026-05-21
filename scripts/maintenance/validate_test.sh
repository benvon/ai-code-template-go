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
  awk '{ if ($1 == "github.com/golangci/golangci-lint/v2") { print "\tgithub.com/golangci/golangci-lint/v2 v0.0.1 // indirect" } else { print } }' tools/go.mod > tools/go.mod.tmp
  mv tools/go.mod.tmp tools/go.mod
  if ./scripts/maintenance/validate.sh; then
    echo "expected validate.sh to fail with drift" >&2
    exit 1
  fi
)

echo "validate_test.sh passed" >&2
