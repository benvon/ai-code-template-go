# Binary releases

Use this when people need downloadable executables. Go module consumers do not
need GoReleaser archives.

## Adopt

Copy goreleaser.yaml here to .goreleaser.yml and choose the binary name and
supported platforms. Copy release.yml to .github/workflows/release.yml only
when publication is authorized. The example publishes archives and checksums;
it does not publish containers. Quality checks gate publication of the same tag.
Review shared quality workflow access and the selected tool versions before enabling it.

Pin GoReleaser in your tool environment before running it. Validate configuration
with `goreleaser check`, then build without publishing using
`goreleaser build --snapshot --clean`. Inspect every supported platform artifact.
Use a human-created semantic-version tag for the initial release process.
Define tag protection, permissions, provenance/signature requirements, and retry
behavior before production use. Never push a test tag merely to validate config.

## Verify and maintain

Check archives, executability, checksums, and actual publication in an explicitly
authorized release. The baseline application has no injected version variables;
add a tested metadata contract if consumers need version output.

PR-driven tagging and automation-to-publication orchestration remain follow-up
work in issue #21. GITHUB_TOKEN-created push events do not trigger another push
workflow; this recipe does not reintroduce that automatic tag chain. The binary-only publisher uses local steps because the currently pinned shared
publisher unconditionally requests package-write permission. Adopt a shared
binary-only workflow once that contract is available. There is no registry login
or package-write permission in this example.
