#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "${TMP_DIR}"' EXIT

cd "${ROOT}"
# Copy the supported scaffold, never local secrets, Git metadata, or build caches.
files=(main.go main_test.go go.mod tools mise.toml Makefile AGENTS.md README.md
  CONTRIBUTING.md SECURITY.md LICENSE .gitignore .golangci.yml .github scripts docs maintenance)
if [ -f go.sum ]; then files+=(go.sum); fi
tar -cf - "${files[@]}" | tar -xf - -C "${TMP_DIR}"

for path in cmd internal Dockerfile docker-compose.yml .env.example .goreleaser.yml \
  .pre-commit-config.yaml .vscode .github/workflows/release.yml \
  .github/workflows/release-tag.yml .github/workflows/release-policy.yml \
  .github/workflows/codeql.yml; do
  if [ -e "${ROOT}/${path}" ]; then
    echo "optional integration in baseline: ${path}" >&2
    exit 1
  fi
done

cd "${TMP_DIR}"
bash scripts/init_template.sh example.com/lean-demo lean-demo
[ "$(go list -m)" = example.com/lean-demo ]
[ "$(cd tools && go list -m)" = example.com/lean-demo/tools ]
[ "$(go list ./... | wc -l | tr -d ' ')" = 1 ]
make check test build
[ "$("${TMP_DIR}/bin/app")" = 'Hello from lean-demo!' ]
echo "Template adoption passed"
