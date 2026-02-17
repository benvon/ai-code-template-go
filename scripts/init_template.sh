#!/usr/bin/env bash

set -euo pipefail

if [ "$#" -lt 2 ]; then
  echo "Usage: $0 <module-path> <project-name>" >&2
  echo "Example: $0 github.com/your-org/your-project your-project" >&2
  exit 2
fi

MODULE_PATH="$1"
PROJECT_NAME="$2"

# Validate PROJECT_NAME contains only safe characters (alphanumeric, hyphen, underscore, dot)
if ! [[ "${PROJECT_NAME}" =~ ^[a-zA-Z0-9._-]+$ ]]; then
  echo "Error: PROJECT_NAME must contain only alphanumeric characters, hyphens, underscores, and dots" >&2
  exit 1
fi

echo "Initializing template for ${PROJECT_NAME} (${MODULE_PATH})"

go mod edit -module "${MODULE_PATH}"

if [ -f README.md ]; then
  # Use sed with properly escaped replacement string
  # Create a temporary file and use basic string replacement
  awk -v old="ai-code-template-go" -v new="${PROJECT_NAME}" '{gsub(old, new); print}' README.md > README.md.tmp
  mv README.md.tmp README.md
fi

if [ -f .env.example ]; then
  if ! grep -q '^APP_NAME=' .env.example; then
    echo "APP_NAME=${PROJECT_NAME}" >> .env.example
  else
    # Use awk for safe replacement
    awk -v new="${PROJECT_NAME}" '/^APP_NAME=/ {print "APP_NAME=" new; next} {print}' .env.example > .env.example.tmp
    mv .env.example.tmp .env.example
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
