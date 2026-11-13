#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT
for recipe in cli http-service library; do
  (
    cd "${ROOT}/docs/recipes/${recipe}/testdata"
    go test -race ./...
    go build -o "${TMP_DIR}/${recipe}" .
  )
done
echo "Go recipe examples passed"
