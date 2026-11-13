# Editor and hooks

Editors and local hooks are contributor choices. Project commands and CI remain
the authority for verification.

## Adopt

Copy extensions.json to .vscode/extensions.json for VS Code recommendations.
For hooks, pin/install pre-commit through your tool environment, copy
pre-commit-config.yaml here to .pre-commit-config.yaml, and run
`pre-commit install`. The reference uses local hooks that call project commands,
so it does not install a separate Go linter toolchain.

## Verify and maintain

Run `pre-commit run --all-files` after installing it. Check staged and unstaged
changes remain understandable when formatters update files. All required checks
must also run without a hook installation in CI. Keep optional hook revisions
and the tool environment updated under the project's chosen update policy.
