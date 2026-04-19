#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
# shellcheck source=scripts/maintenance/lib.sh
source "${SCRIPT_DIR}/lib.sh"

ROOT="$(repo_root)"
MANIFEST="$(manifest_file)"

require_manifest

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

GO_MOD_FILE="${ROOT}/go.mod"
TOOL_VERSIONS_FILE="${ROOT}/.tool-versions"
PRE_COMMIT_FILE="${ROOT}/.pre-commit-config.yaml"
MAKEFILE_FILE="${ROOT}/Makefile"
SETUP_SCRIPT_FILE="${ROOT}/scripts/setup.sh"

replace_line "${GO_MOD_FILE}" '^go[[:space:]]+[0-9]+\.[0-9]+(\.[0-9]+)?$' "go ${GO_LANGUAGE}"

replace_line "${TOOL_VERSIONS_FILE}" '^golang[[:space:]]+.*$' "golang ${GO_TOOLCHAIN}"
replace_line "${TOOL_VERSIONS_FILE}" '^golangci-lint[[:space:]]+.*$' "golangci-lint ${GOLANGCI_LINT_VERSION}"
replace_line "${TOOL_VERSIONS_FILE}" '^gosec[[:space:]]+.*$' "gosec ${GOSEC_VERSION}"
replace_line "${TOOL_VERSIONS_FILE}" '^govulncheck[[:space:]]+.*$' "govulncheck ${GOVULNCHECK_VERSION}"
replace_line "${TOOL_VERSIONS_FILE}" '^goimports[[:space:]]+.*$' "goimports ${GOIMPORTS_VERSION}"
replace_line "${TOOL_VERSIONS_FILE}" '^pre-commit[[:space:]]+.*$' "pre-commit ${PRE_COMMIT_VERSION}"

awk -v rev1="${PRE_COMMIT_HOOKS_REV}" -v rev2="${PRE_COMMIT_GOLANG_REV}" '
  {
    if ($0 ~ /repo: https:\/\/github.com\/pre-commit\/pre-commit-hooks/) { target=1; print; next }
    if ($0 ~ /repo: https:\/\/github.com\/dnephin\/pre-commit-golang/) { target=2; print; next }
    if ($0 ~ /repo: https:\/\//) { target=0; print; next }
    if ($0 ~ /^[[:space:]]+rev:/) {
      if (target == 1) { print "    rev: " rev1; target=0; next }
      if (target == 2) { print "    rev: " rev2; target=0; next }
      target=0
    }
    print
  }
' "${PRE_COMMIT_FILE}" > "${PRE_COMMIT_FILE}.tmp"
mv "${PRE_COMMIT_FILE}.tmp" "${PRE_COMMIT_FILE}"

for file in "${ROOT}/.github/workflows"/*.yml; do
  [ -f "${file}" ] || continue
  perl -i -pe "s#^(\\s*uses:\\s*actions/checkout)\\@.*#\\1\\@${ACTIONS_CHECKOUT}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*actions/setup-go)\\@.*#\\1\\@${ACTIONS_SETUP_GO}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*actions/cache)\\@.*#\\1\\@${ACTIONS_CACHE}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*codecov/codecov-action)\\@.*#\\1\\@${CODECOV_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*golangci/golangci-lint-action)\\@.*#\\1\\@${GOLANGCI_LINT_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*goreleaser/goreleaser-action)\\@.*#\\1\\@${GORELEASER_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*docker/setup-buildx-action)\\@.*#\\1\\@${DOCKER_SETUP_BUILDX_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*docker/login-action)\\@.*#\\1\\@${DOCKER_LOGIN_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*peter-evans/create-pull-request)\\@.*#\\1\\@${PETER_EVANS_CREATE_PULL_REQUEST}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*github/codeql-action/init)\\@.*#\\1\\@${GITHUB_CODEQL_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*github/codeql-action/analyze)\\@.*#\\1\\@${GITHUB_CODEQL_ACTION}#" "${file}"
  perl -i -pe "s#^(\\s*uses:\\s*actions/dependency-review-action)\\@.*#\\1\\@${DEPENDENCY_REVIEW_ACTION}#" "${file}"
done

replace_line "${SETUP_SCRIPT_FILE}" '^    go install golang.org/x/vuln/cmd/govulncheck@.*$' "    go install golang.org/x/vuln/cmd/govulncheck@${GOVULNCHECK_MODULE}"
replace_line "${SETUP_SCRIPT_FILE}" '^    go install github.com/securego/gosec/v2/cmd/gosec@.*$' "    go install github.com/securego/gosec/v2/cmd/gosec@${GOSEC_MODULE}"
replace_line "${SETUP_SCRIPT_FILE}" '^    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh \| sh -s -- -b .*\/bin .*$' "    curl -sSfL https://raw.githubusercontent.com/golangci/golangci-lint/master/install.sh | sh -s -- -b \$(go env GOPATH)/bin v${GOLANGCI_LINT_VERSION}"
replace_line "${MAKEFILE_FILE}" '^GOVULNCHECK_VERSION \?= .*$' "GOVULNCHECK_VERSION ?= ${GOVULNCHECK_VERSION}"

echo "Synchronized versions from ${MANIFEST}" >&2
