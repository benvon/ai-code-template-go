#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
source "${SCRIPT_DIR}/lib.sh"

MANIFEST="$(manifest_file)"
require_manifest

usage() {
  cat <<USAGE
Usage: $0 [--set section.key=value] [--discover-latest]
USAGE
}

git_latest_tag() {
  local repo_url="$1"
  git ls-remote --refs --tags "${repo_url}" \
    | awk '{print $2}' \
    | sed 's#refs/tags/##' \
    | grep -E '^v?[0-9]+' \
    | grep -Ev '(alpha|beta|rc)' \
    | sort -V \
    | tail -1
}

module_latest() {
  local module="$1"
  go list -m -f '{{.Version}}' "${module}@latest"
}

discover_latest() {
  local value

  value="$(git_latest_tag https://github.com/pre-commit/pre-commit-hooks.git || true)"
  [ -n "${value}" ] && yaml_set "${MANIFEST}" pre_commit_hooks pre_commit_hooks "${value}"

  value="$(git_latest_tag https://github.com/dnephin/pre-commit-golang.git || true)"
  [ -n "${value}" ] && yaml_set "${MANIFEST}" pre_commit_hooks pre_commit_golang "${value}"

  value="$(module_latest golang.org/x/vuln/cmd/govulncheck || true)"
  [ -n "${value}" ] && yaml_set "${MANIFEST}" go_modules govulncheck_module "${value}"

  value="$(module_latest github.com/securego/gosec/v2/cmd/gosec || true)"
  [ -n "${value}" ] && yaml_set "${MANIFEST}" go_modules gosec_module "${value}"

  echo "Discovered latest versions for selected dependencies" >&2
}

set_values=()
run_discover=false

while [ "$#" -gt 0 ]; do
  case "$1" in
    --set)
      set_values+=("$2")
      shift 2
      ;;
    --discover-latest)
      run_discover=true
      shift
      ;;
    -h|--help)
      usage
      exit 0
      ;;
    *)
      echo "unknown argument: $1" >&2
      usage
      exit 1
      ;;
  esac
done

for item in "${set_values[@]}"; do
  section_key="${item%%=*}"
  value="${item#*=}"
  section="${section_key%%.*}"
  key="${section_key#*.}"
  if [ "${section}" = "${key}" ]; then
    echo "invalid --set format: ${item}" >&2
    exit 1
  fi
  yaml_set "${MANIFEST}" "${section}" "${key}" "${value}"
  echo "Set ${section}.${key}=${value}" >&2
done

if [ "${run_discover}" = true ]; then
  discover_latest
fi

"${SCRIPT_DIR}/sync_files.sh"
"${SCRIPT_DIR}/validate.sh"
