#!/usr/bin/env bash
set -euo pipefail
cd "$(dirname "${BASH_SOURCE[0]}")/.."
# Ask Go for application packages so testdata recipes stay outside this command.
directories="$(go list -f '{{.Dir}}' ./...)"
while IFS= read -r directory; do
  files=("${directory}"/*.go)
  if [ "${1:-}" = --check ]; then
    unformatted="$(gofmt -l "${files[@]}")"
    if [ -n "${unformatted}" ]; then
      printf 'Run make fmt to format:\n%s\n' "${unformatted}" >&2
      exit 1
    fi
  else
    gofmt -w "${files[@]}"
  fi
done <<< "${directories}"
