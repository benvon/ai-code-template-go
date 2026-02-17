#!/usr/bin/env bash

set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cp -R "${ROOT}" "${TMP_DIR}/repo"

(
  cd "${TMP_DIR}/repo"
  ./scripts/maintenance/sync_files.sh
  first_hash="$(shasum go.mod .tool-versions .pre-commit-config.yaml .github/workflows/ci.yml .github/workflows/release.yml scripts/setup.sh Makefile | shasum | awk '{print $1}')"

  ./scripts/maintenance/sync_files.sh
  second_hash="$(shasum go.mod .tool-versions .pre-commit-config.yaml .github/workflows/ci.yml .github/workflows/release.yml scripts/setup.sh Makefile | shasum | awk '{print $1}')"

  if [ "${first_hash}" != "${second_hash}" ]; then
    echo "sync_files.sh is not idempotent" >&2
    exit 1
  fi
)

echo "idempotency_test.sh passed" >&2
