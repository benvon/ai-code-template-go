#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <module-path> <project-name>" >&2
  echo "Example: $0 github.com/your-org/your-project your-project" >&2
  exit 2
fi

MODULE_PATH="$1"
PROJECT_NAME="$2"

echo "Initializing template for ${PROJECT_NAME} (${MODULE_PATH})"

go mod edit -module "${MODULE_PATH}"

if [ -f README.md ]; then
  sed -i.bak "s/ai-code-template-go/${PROJECT_NAME}/g" README.md
  rm -f README.md.bak
fi

if [ -f .env.example ]; then
  if ! grep -q '^APP_NAME=' .env.example; then
    echo "APP_NAME=${PROJECT_NAME}" >> .env.example
  else
    sed -i.bak "s/^APP_NAME=.*/APP_NAME=${PROJECT_NAME}/" .env.example
    rm -f .env.example.bak
  fi
fi

cat <<MSG
Template initialized.

Next steps:
1. Review README.md and AGENTS.md for project-specific policy.
2. Run: go mod tidy
3. Run: make ci-local
4. Configure branch protections to require CI, Guardrails, and Maintenance Validate checks.
MSG
