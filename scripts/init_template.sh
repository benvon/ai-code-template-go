#!/usr/bin/env bash
set -euo pipefail

if [ "$#" -ne 2 ] || [ -z "$1" ] || [ -z "$2" ]; then
  echo "Usage: $0 <module-path> <project-name>" >&2
  exit 2
fi
MODULE_PATH="$1"
PROJECT_NAME="$2"
if ! [[ "${PROJECT_NAME}" =~ ^[a-zA-Z0-9][a-zA-Z0-9._-]*$ ]]; then
  echo "PROJECT_NAME must start with a letter or number and contain only letters, numbers, dots, underscores, or hyphens" >&2
  exit 1
fi
cd "$(dirname "${BASH_SOURCE[0]}")/.."

go mod edit -module "${MODULE_PATH}"
go mod edit -modfile=tools/go.mod -module "${MODULE_PATH}/tools"
awk -v name="${PROJECT_NAME}" '
  /^const applicationName = / { print "const applicationName = \"" name "\""; next }
  { print }
' main.go > main.go.tmp
mv main.go.tmp main.go
awk -v name="${PROJECT_NAME}" 'NR == 1 { print "# " name; next } { print }' README.md > README.md.tmp
mv README.md.tmp README.md

cat <<MSG
Initialized ${PROJECT_NAME} (${MODULE_PATH}).
Run make check, make test, and make build; run ./bin/app to verify startup.
Before merging, run make ci-local and configure required quality checks.
Set repository ownership and security contacts using docs/TEMPLATE_ADOPTION.md.
MSG
