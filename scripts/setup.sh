#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "${BASH_SOURCE[0]}")/.."
# Tool installation is deliberate; mise.toml and tools/go.mod own the versions.
make setup
