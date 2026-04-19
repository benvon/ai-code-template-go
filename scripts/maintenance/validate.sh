#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/lib.sh"

ROOT="$(repo_root)"
MANIFEST="$(manifest_file)"

require_manifest

failures=0

expect_match() {
  local file="$1"
  local pattern="$2"
  local message="$3"
  if ! grep -Eq "${pattern}" "${file}"; then
    echo "[FAIL] ${message} (${file})" >&2
    failures=$((failures + 1))
  fi
}

check_no_latest() {
  local file="$1"
  if grep -Eq '@latest|version:[[:space:]]+latest\b' "${file}"; then
    echo "[FAIL] latest pin found in ${file}" >&2
    failures=$((failures + 1))
  fi
}

GO_LANGUAGE="$(yaml_get "${MANIFEST}" go language)"
GO_TOOLCHAIN="$(yaml_get "${MANIFEST}" go toolchain)"
GOLANGCI_LINT_VERSION="$(yaml_get "${MANIFEST}" tools golangci_lint)"
GOSEC_VERSION="$(yaml_get "${MANIFEST}" tools gosec)"
GOVULNCHECK_VERSION="$(yaml_get "${MANIFEST}" tools govulncheck)"
GOIMPORTS_VERSION="$(yaml_get "${MANIFEST}" tools goimports)"
PRE_COMMIT_VERSION="$(yaml_get "${MANIFEST}" tools pre_commit)"

ACTIONS_CHECKOUT="$(yaml_get "${MANIFEST}" github_actions actions_checkout)"
ACTIONS_SETUP_GO="$(yaml_get "${MANIFEST}" github_actions actions_setup_go)"
ACTIONS_CACHE="$(yaml_get "${MANIFEST}" github_actions actions_cache)"
CODECOV_ACTION="$(yaml_get "${MANIFEST}" github_actions codecov_action)"
GOLANGCI_LINT_ACTION="$(yaml_get "${MANIFEST}" github_actions golangci_lint_action)"
GORELEASER_ACTION="$(yaml_get "${MANIFEST}" github_actions goreleaser_action)"
DOCKER_SETUP_BUILDX_ACTION="$(yaml_get "${MANIFEST}" github_actions docker_setup_buildx_action)"
DOCKER_LOGIN_ACTION="$(yaml_get "${MANIFEST}" github_actions docker_login_action)"
PETER_EVANS_CREATE_PULL_REQUEST="$(yaml_get "${MANIFEST}" github_actions peter_evans_create_pull_request)"
GITHUB_CODEQL_ACTION="$(yaml_get "${MANIFEST}" github_actions github_codeql_action)"
DEPENDENCY_REVIEW_ACTION="$(yaml_get "${MANIFEST}" github_actions dependency_review_action)"

PRE_COMMIT_HOOKS_REV="$(yaml_get "${MANIFEST}" pre_commit_hooks pre_commit_hooks)"
PRE_COMMIT_GOLANG_REV="$(yaml_get "${MANIFEST}" pre_commit_hooks pre_commit_golang)"

GOVULNCHECK_MODULE="$(yaml_get "${MANIFEST}" go_modules govulncheck_module)"
GOSEC_MODULE="$(yaml_get "${MANIFEST}" go_modules gosec_module)"

expect_match "${ROOT}/go.mod" "^go[[:space:]]+${GO_LANGUAGE}$" "go.mod go directive drift"
expect_match "${ROOT}/.tool-versions" "^golang[[:space:]]+${GO_TOOLCHAIN}$" ".tool-versions golang drift"
expect_match "${ROOT}/.tool-versions" "^golangci-lint[[:space:]]+${GOLANGCI_LINT_VERSION}$" ".tool-versions golangci-lint drift"
expect_match "${ROOT}/.tool-versions" "^gosec[[:space:]]+${GOSEC_VERSION}$" ".tool-versions gosec drift"
expect_match "${ROOT}/.tool-versions" "^govulncheck[[:space:]]+${GOVULNCHECK_VERSION}$" ".tool-versions govulncheck drift"
expect_match "${ROOT}/.tool-versions" "^goimports[[:space:]]+${GOIMPORTS_VERSION}$" ".tool-versions goimports drift"
expect_match "${ROOT}/.tool-versions" "^pre-commit[[:space:]]+${PRE_COMMIT_VERSION}$" ".tool-versions pre-commit drift"

expect_match "${ROOT}/.pre-commit-config.yaml" "rev:[[:space:]]+${PRE_COMMIT_HOOKS_REV}" "pre-commit-hooks rev drift"
expect_match "${ROOT}/.pre-commit-config.yaml" "rev:[[:space:]]+${PRE_COMMIT_GOLANG_REV}" "pre-commit-golang rev drift"

for file in "${ROOT}/.github/workflows"/*.yml; do
  [ -f "${file}" ] || continue

  if grep -Eq "uses:[[:space:]]*actions/checkout@" "${file}"; then
    expect_match "${file}" "actions/checkout@${ACTIONS_CHECKOUT}" "checkout action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*actions/setup-go@" "${file}"; then
    expect_match "${file}" "actions/setup-go@${ACTIONS_SETUP_GO}" "setup-go action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*actions/cache@" "${file}"; then
    expect_match "${file}" "actions/cache@${ACTIONS_CACHE}" "actions/cache version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*codecov/codecov-action@" "${file}"; then
    expect_match "${file}" "codecov/codecov-action@${CODECOV_ACTION}" "codecov action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*golangci/golangci-lint-action@" "${file}"; then
    expect_match "${file}" "golangci/golangci-lint-action@${GOLANGCI_LINT_ACTION}" "golangci-lint action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*goreleaser/goreleaser-action@" "${file}"; then
    expect_match "${file}" "goreleaser/goreleaser-action@${GORELEASER_ACTION}" "goreleaser action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*docker/setup-buildx-action@" "${file}"; then
    expect_match "${file}" "docker/setup-buildx-action@${DOCKER_SETUP_BUILDX_ACTION}" "setup-buildx action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*docker/login-action@" "${file}"; then
    expect_match "${file}" "docker/login-action@${DOCKER_LOGIN_ACTION}" "docker login action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*peter-evans/create-pull-request@" "${file}"; then
    expect_match "${file}" "peter-evans/create-pull-request@${PETER_EVANS_CREATE_PULL_REQUEST}" "create-pull-request action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*github/codeql-action/init@" "${file}"; then
    expect_match "${file}" "github/codeql-action/init@${GITHUB_CODEQL_ACTION}" "codeql init action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*github/codeql-action/analyze@" "${file}"; then
    expect_match "${file}" "github/codeql-action/analyze@${GITHUB_CODEQL_ACTION}" "codeql analyze action version drift (${file})"
  fi
  if grep -Eq "uses:[[:space:]]*actions/dependency-review-action@" "${file}"; then
    expect_match "${file}" "actions/dependency-review-action@${DEPENDENCY_REVIEW_ACTION}" "dependency review action version drift (${file})"
  fi

  check_no_latest "${file}"
done

expect_match "${ROOT}/scripts/setup.sh" "govulncheck@${GOVULNCHECK_MODULE}" "setup govulncheck module drift"
expect_match "${ROOT}/scripts/setup.sh" "gosec@${GOSEC_MODULE}" "setup gosec module drift"
expect_match "${ROOT}/scripts/setup.sh" "golangci-lint/master/install.sh.*v${GOLANGCI_LINT_VERSION}" "setup golangci-lint installer drift"
expect_match "${ROOT}/Makefile" "^GOVULNCHECK_VERSION \?= ${GOVULNCHECK_VERSION}$" "Makefile govulncheck version drift"

check_no_latest "${ROOT}/scripts/setup.sh"

if [ "${failures}" -ne 0 ]; then
  echo "maintenance validation failed (${failures} issue(s))" >&2
  exit 1
fi

echo "maintenance validation passed" >&2
