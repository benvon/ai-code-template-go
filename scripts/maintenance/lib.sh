#!/usr/bin/env bash

set -euo pipefail

repo_root() {
  local script_dir
  script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
  cd "${script_dir}/../.." && pwd
}

manifest_file() {
  local root
  root="$(repo_root)"
  printf '%s/maintenance/versions.yaml\n' "${root}"
}

yaml_get() {
  local file="$1"
  local section="$2"
  local key="$3"

  awk -v section="${section}" -v key="${key}" '
    /^[[:space:]]*#/ { next }
    /^[^[:space:]][^:]*:[[:space:]]*$/ {
      current=$1
      sub(/:$/, "", current)
      next
    }
    current == section {
      line=$0
      sub(/^[[:space:]]+/, "", line)
      if (line ~ ("^" key ":[[:space:]]*")) {
        sub(/^[^:]+:[[:space:]]*/, "", line)
        gsub(/"/, "", line)
        gsub(/[[:space:]]+$/, "", line)
        print line
        exit
      }
    }
  ' "${file}"
}

yaml_set() {
  local file="$1"
  local section="$2"
  local key="$3"
  local value="$4"
  local tmp
  tmp="$(mktemp)"

  awk -v section="${section}" -v key="${key}" -v value="${value}" '
    /^[^[:space:]][^:]*:[[:space:]]*$/ {
      current=$1
      sub(/:$/, "", current)
      print
      next
    }
    {
      if (current == section) {
        line=$0
        trimmed=line
        sub(/^[[:space:]]+/, "", trimmed)
        if (trimmed ~ ("^" key ":[[:space:]]*")) {
          indent=""
          match(line, /^[[:space:]]*/)
          if (RLENGTH > 0) {
            indent=substr(line, 1, RLENGTH)
          }
          print indent key ": \"" value "\""
          next
        }
      }
      print
    }
  ' "${file}" > "${tmp}"

  mv "${tmp}" "${file}"
}

replace_line() {
  local file="$1"
  local pattern="$2"
  local replacement="$3"
  local tmp
  tmp="$(mktemp)"

  awk -v pattern="${pattern}" -v replacement="${replacement}" '
    {
      if ($0 ~ pattern) {
        print replacement
      } else {
        print
      }
    }
  ' "${file}" > "${tmp}"

  mv "${tmp}" "${file}"
}

require_manifest() {
  local file
  file="$(manifest_file)"
  if [ ! -f "${file}" ]; then
    echo "manifest not found: ${file}" >&2
    exit 1
  fi
}
