This PR was generated automatically by the template maintenance workflow.

## Checklist
- [ ] Review tool and dependency pin updates
- [ ] Review workflow/action updates
- [ ] Confirm CI remains green
- [ ] Confirm release workflow still succeeds

## Risk Summary

### Tooling changes
diff --git a/maintenance/versions.yaml b/maintenance/versions.yaml
index a625d44..669c188 100644
--- a/maintenance/versions.yaml
+++ b/maintenance/versions.yaml
@@ -3,10 +3,10 @@ go:
   toolchain: "1.26.5"
 
 tools:
-  golangci_lint: "2.8.0"
-  gosec: "2.22.11"
-  govulncheck: "1.1.4"
-  goimports: "0.44.0"
+  golangci_lint: "2.12.2"
+  gosec: "2.28.0"
+  govulncheck: "1.7.0"
+  goimports: "0.49.0"
 
 github_actions:
   actions_checkout: "v6"
diff --git a/tools/go.mod b/tools/go.mod
index be7eb7d..84fe26e 100644
--- a/tools/go.mod
+++ b/tools/go.mod
@@ -14,8 +14,9 @@ tool (
 require (
 	4d63.com/gocheckcompilerdirectives v1.3.0 // indirect
 	4d63.com/gochecknoglobals v0.2.2 // indirect
-	cloud.google.com/go v0.121.2 // indirect
-	cloud.google.com/go/auth v0.16.5 // indirect
+	charm.land/lipgloss/v2 v2.0.3 // indirect
+	cloud.google.com/go v0.123.0 // indirect
+	cloud.google.com/go/auth v0.21.0 // indirect
 	cloud.google.com/go/compute/metadata v0.9.0 // indirect
 	codeberg.org/chavacava/garif v0.2.0 // indirect
 	codeberg.org/polyfloyd/go-errorlint v1.9.0 // indirect
@@ -29,54 +30,62 @@ require (
 	github.com/Antonboom/nilnil v1.1.1 // indirect
 	github.com/Antonboom/testifylint v1.6.4 // indirect
 	github.com/BurntSushi/toml v1.6.0 // indirect
+	github.com/ClickHouse/clickhouse-go-linter v1.2.0 // indirect
 	github.com/Djarvur/go-err113 v0.1.1 // indirect
-	github.com/Masterminds/semver/v3 v3.4.0 // indirect
-	github.com/MirrexOne/unqueryvet v1.4.0 // indirect
+	github.com/Masterminds/semver/v3 v3.5.0 // indirect
+	github.com/MirrexOne/unqueryvet v1.5.4 // indirect
 	github.com/OpenPeeDeeP/depguard/v2 v2.2.1 // indirect
-	github.com/alecthomas/chroma/v2 v2.21.1 // indirect
+	github.com/alecthomas/chroma/v2 v2.24.1 // indirect
 	github.com/alecthomas/go-check-sumtype v0.3.1 // indirect
 	github.com/alexkohler/nakedret/v2 v2.0.6 // indirect
-	github.com/alexkohler/prealloc v1.0.1 // indirect
+	github.com/alexkohler/prealloc v1.1.0 // indirect
 	github.com/alfatraining/structtag v1.0.0 // indirect
 	github.com/alingse/asasalint v0.0.11 // indirect
 	github.com/alingse/nilnesserr v0.2.0 // indirect
-	github.com/anthropics/anthropic-sdk-go v1.19.0 // indirect
-	github.com/ashanbrown/forbidigo/v2 v2.3.0 // indirect
-	github.com/ashanbrown/makezero/v2 v2.1.0 // indirect
+	github.com/anthropics/anthropic-sdk-go v1.57.0 // indirect
+	github.com/ashanbrown/forbidigo/v2 v2.3.1 // indirect
+	github.com/ashanbrown/makezero/v2 v2.2.1 // indirect
 	github.com/aymanbagabas/go-osc52/v2 v2.0.1 // indirect
+	github.com/bahlo/generic-list-go v0.2.0 // indirect
 	github.com/beorn7/perks v1.0.1 // indirect
 	github.com/bkielbasa/cyclop v1.2.3 // indirect
 	github.com/blizzy78/varnamelen v0.8.0 // indirect
 	github.com/bombsimon/wsl/v4 v4.7.0 // indirect
-	github.com/bombsimon/wsl/v5 v5.3.0 // indirect
+	github.com/bombsimon/wsl/v5 v5.8.0 // indirect
 	github.com/breml/bidichk v0.3.3 // indirect
 	github.com/breml/errchkjson v0.4.1 // indirect
-	github.com/butuzov/ireturn v0.4.0 // indirect
+	github.com/buger/jsonparser v1.2.0 // indirect
+	github.com/butuzov/ireturn v0.4.1 // indirect
 	github.com/butuzov/mirror v1.3.0 // indirect
 	github.com/catenacyber/perfsprint v0.10.1 // indirect
 	github.com/ccojocar/zxcvbn-go v1.0.4 // indirect
 	github.com/cespare/xxhash/v2 v2.3.0 // indirect
 	github.com/charithe/durationcheck v0.0.11 // indirect
-	github.com/charmbracelet/colorprofile v0.2.3-0.20250311203215-f60798e515dc // indirect
+	github.com/charmbracelet/colorprofile v0.4.3 // indirect
 	github.com/charmbracelet/lipgloss v1.1.0 // indirect
-	github.com/charmbracelet/x/ansi v0.8.0 // indirect
+	github.com/charmbracelet/ultraviolet v0.0.0-20251205161215-1948445e3318 // indirect
+	github.com/charmbracelet/x/ansi v0.11.7 // indirect
 	github.com/charmbracelet/x/cellbuf v0.0.13-0.20250311204145-2c3ea96c31dd // indirect
-	github.com/charmbracelet/x/term v0.2.1 // indirect
+	github.com/charmbracelet/x/term v0.2.2 // indirect
+	github.com/charmbracelet/x/termios v0.1.1 // indirect
+	github.com/charmbracelet/x/windows v0.2.2 // indirect
 	github.com/ckaznocha/intrange v0.3.1 // indirect
+	github.com/clipperhouse/displaywidth v0.11.0 // indirect
+	github.com/clipperhouse/uax29/v2 v2.7.0 // indirect
 	github.com/curioswitch/go-reassign v0.3.0 // indirect
 	github.com/daixiang0/gci v0.13.7 // indirect
 	github.com/dave/dst v0.27.3 // indirect
-	github.com/davecgh/go-spew v1.1.1 // indirect
+	github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc // indirect
 	github.com/denis-tingaikin/go-header v0.5.0 // indirect
-	github.com/dlclark/regexp2 v1.11.5 // indirect
+	github.com/dlclark/regexp2 v1.12.0 // indirect
 	github.com/ettle/strcase v0.2.0 // indirect
-	github.com/fatih/color v1.18.0 // indirect
+	github.com/fatih/color v1.19.0 // indirect
 	github.com/fatih/structtag v1.2.0 // indirect
-	github.com/felixge/httpsnoop v1.0.4 // indirect
+	github.com/felixge/httpsnoop v1.1.0 // indirect
 	github.com/firefart/nonamedreturns v1.0.6 // indirect
 	github.com/fsnotify/fsnotify v1.5.4 // indirect
 	github.com/fzipp/gocyclo v0.6.0 // indirect
-	github.com/ghostiam/protogetter v0.3.18 // indirect
+	github.com/ghostiam/protogetter v0.3.20 // indirect
 	github.com/go-critic/go-critic v0.14.3 // indirect
 	github.com/go-logr/logr v1.4.3 // indirect
 	github.com/go-logr/stdr v1.2.2 // indirect
@@ -87,29 +96,30 @@ require (
 	github.com/go-toolsmith/astp v1.1.0 // indirect
 	github.com/go-toolsmith/strparse v1.1.0 // indirect
 	github.com/go-toolsmith/typep v1.1.0 // indirect
-	github.com/go-viper/mapstructure/v2 v2.4.0 // indirect
+	github.com/go-viper/mapstructure/v2 v2.5.0 // indirect
 	github.com/go-xmlfmt/xmlfmt v1.1.3 // indirect
 	github.com/gobwas/glob v0.2.3 // indirect
-	github.com/godoc-lint/godoc-lint v0.11.1 // indirect
+	github.com/godoc-lint/godoc-lint v0.11.2 // indirect
 	github.com/gofrs/flock v0.13.0 // indirect
 	github.com/golang/protobuf v1.5.4 // indirect
 	github.com/golangci/asciicheck v0.5.0 // indirect
-	github.com/golangci/dupl v0.0.0-20250308024227-f665c8d69b32 // indirect
+	github.com/golangci/dupl v0.0.0-20260401084720-c99c5cf5c202 // indirect
 	github.com/golangci/go-printf-func-name v0.1.1 // indirect
 	github.com/golangci/gofmt v0.0.0-20250106114630-d62b90e6713d // indirect
-	github.com/golangci/golangci-lint/v2 v2.8.0 // indirect
-	github.com/golangci/golines v0.14.0 // indirect
-	github.com/golangci/misspell v0.7.0 // indirect
+	github.com/golangci/golangci-lint/v2 v2.12.2 // indirect
+	github.com/golangci/golines v0.15.0 // indirect
+	github.com/golangci/misspell v0.8.0 // indirect
 	github.com/golangci/plugin-module-register v0.1.2 // indirect
 	github.com/golangci/revgrep v0.8.0 // indirect
+	github.com/golangci/rowserrcheck v0.0.0-20260419091836-c5f79b8a11ba // indirect
 	github.com/golangci/swaggoswag v0.0.0-20250504205917-77f2aca3143e // indirect
 	github.com/golangci/unconvert v0.0.0-20250410112200-a129a6e6413e // indirect
 	github.com/google/go-cmp v0.7.0 // indirect
 	github.com/google/s2a-go v0.1.9 // indirect
 	github.com/google/uuid v1.6.0 // indirect
-	github.com/googleapis/enterprise-certificate-proxy v0.3.6 // indirect
-	github.com/googleapis/gax-go/v2 v2.15.0 // indirect
-	github.com/gookit/color v1.6.0 // indirect
+	github.com/googleapis/enterprise-certificate-proxy v0.3.18 // indirect
+	github.com/googleapis/gax-go/v2 v2.23.0 // indirect
+	github.com/gookit/color v1.6.1 // indirect
 	github.com/gordonklaus/ineffassign v0.2.0 // indirect
 	github.com/gorilla/websocket v1.5.3 // indirect
 	github.com/gostaticanalysis/analysisutil v0.7.1 // indirect
@@ -117,17 +127,18 @@ require (
 	github.com/gostaticanalysis/forcetypeassert v0.2.0 // indirect
 	github.com/gostaticanalysis/nilerr v0.1.2 // indirect
 	github.com/hashicorp/go-immutable-radix/v2 v2.1.0 // indirect
-	github.com/hashicorp/go-version v1.8.0 // indirect
+	github.com/hashicorp/go-version v1.9.0 // indirect
 	github.com/hashicorp/golang-lru/v2 v2.0.7 // indirect
 	github.com/hashicorp/hcl v1.0.0 // indirect
 	github.com/hexops/gotextdiff v1.0.3 // indirect
 	github.com/inconshreveable/mousetrap v1.1.0 // indirect
-	github.com/jgautheron/goconst v1.8.2 // indirect
+	github.com/invopop/jsonschema v0.14.0 // indirect
+	github.com/jgautheron/goconst v1.10.0 // indirect
 	github.com/jingyugao/rowserrcheck v1.1.1 // indirect
 	github.com/jjti/go-spancheck v0.6.5 // indirect
 	github.com/julz/importas v0.2.0 // indirect
 	github.com/karamaru-alpha/copyloopvar v1.2.2 // indirect
-	github.com/kisielk/errcheck v1.9.0 // indirect
+	github.com/kisielk/errcheck v1.10.0 // indirect
 	github.com/kkHAIKE/contextcheck v1.1.6 // indirect
 	github.com/kulti/thelper v0.7.1 // indirect
 	github.com/kunwardeep/paralleltest v1.0.15 // indirect
@@ -139,31 +150,33 @@ require (
 	github.com/ldez/tagliatelle v0.7.2 // indirect
 	github.com/ldez/usetesting v0.5.0 // indirect
 	github.com/leonklingele/grouper v1.1.2 // indirect
-	github.com/lucasb-eyer/go-colorful v1.2.0 // indirect
+	github.com/lucasb-eyer/go-colorful v1.4.0 // indirect
 	github.com/macabu/inamedparam v0.2.0 // indirect
 	github.com/magiconair/properties v1.8.6 // indirect
 	github.com/manuelarte/embeddedstructfieldcheck v0.4.0 // indirect
-	github.com/manuelarte/funcorder v0.5.0 // indirect
+	github.com/manuelarte/funcorder v0.6.0 // indirect
 	github.com/maratori/testableexamples v1.0.1 // indirect
 	github.com/maratori/testpackage v1.1.2 // indirect
 	github.com/matoous/godox v1.1.0 // indirect
 	github.com/mattn/go-colorable v0.1.14 // indirect
 	github.com/mattn/go-isatty v0.0.20 // indirect
-	github.com/mattn/go-runewidth v0.0.16 // indirect
+	github.com/mattn/go-runewidth v0.0.23 // indirect
 	github.com/matttproud/golang_protobuf_extensions v1.0.1 // indirect
-	github.com/mgechev/revive v1.13.0 // indirect
+	github.com/mgechev/revive v1.15.0 // indirect
 	github.com/mitchellh/go-homedir v1.1.0 // indirect
 	github.com/mitchellh/mapstructure v1.5.0 // indirect
 	github.com/moricho/tparallel v0.3.2 // indirect
+	github.com/muesli/cancelreader v0.2.2 // indirect
 	github.com/muesli/termenv v0.16.0 // indirect
 	github.com/nakabonne/nestif v0.3.1 // indirect
 	github.com/nishanths/exhaustive v0.12.0 // indirect
 	github.com/nishanths/predeclared v0.2.2 // indirect
-	github.com/nunnatsa/ginkgolinter v0.21.2 // indirect
-	github.com/openai/openai-go/v3 v3.8.1 // indirect
+	github.com/nunnatsa/ginkgolinter v0.23.0 // indirect
+	github.com/openai/openai-go/v3 v3.42.0 // indirect
+	github.com/pb33f/ordered-map/v2 v2.3.1 // indirect
 	github.com/pelletier/go-toml v1.9.5 // indirect
-	github.com/pelletier/go-toml/v2 v2.2.4 // indirect
-	github.com/pmezard/go-difflib v1.0.0 // indirect
+	github.com/pelletier/go-toml/v2 v2.3.1 // indirect
+	github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 // indirect
 	github.com/prometheus/client_golang v1.12.1 // indirect
 	github.com/prometheus/client_model v0.2.0 // indirect
 	github.com/prometheus/common v0.32.1 // indirect
@@ -177,16 +190,17 @@ require (
 	github.com/rivo/uniseg v0.4.7 // indirect
 	github.com/rogpeppe/go-internal v1.14.1 // indirect
 	github.com/ryancurrah/gomodguard v1.4.1 // indirect
-	github.com/ryanrolds/sqlclosecheck v0.5.1 // indirect
+	github.com/ryancurrah/gomodguard/v2 v2.1.3 // indirect
+	github.com/ryanrolds/sqlclosecheck v0.6.0 // indirect
 	github.com/sanposhiho/wastedassign/v2 v2.1.0 // indirect
 	github.com/santhosh-tekuri/jsonschema/v6 v6.0.2 // indirect
 	github.com/sashamelentyev/interfacebloat v1.1.0 // indirect
 	github.com/sashamelentyev/usestdlibvars v1.29.0 // indirect
-	github.com/securego/gosec/v2 v2.22.11 // indirect
-	github.com/sirupsen/logrus v1.9.3 // indirect
+	github.com/securego/gosec/v2 v2.28.0 // indirect
+	github.com/sirupsen/logrus v1.9.4 // indirect
 	github.com/sivchari/containedctx v1.0.3 // indirect
-	github.com/sonatard/noctx v0.4.0 // indirect
-	github.com/sourcegraph/go-diff v0.7.0 // indirect
+	github.com/sonatard/noctx v0.5.1 // indirect
+	github.com/sourcegraph/go-diff v0.8.0 // indirect
 	github.com/spf13/afero v1.15.0 // indirect
 	github.com/spf13/cast v1.5.0 // indirect
 	github.com/spf13/cobra v1.10.2 // indirect
@@ -194,23 +208,24 @@ require (
 	github.com/spf13/pflag v1.0.10 // indirect
 	github.com/spf13/viper v1.12.0 // indirect
 	github.com/ssgreg/nlreturn/v2 v2.2.1 // indirect
+	github.com/standard-webhooks/standard-webhooks/libraries v0.0.1 // indirect
 	github.com/stbenjam/no-sprintf-host-port v0.3.1 // indirect
-	github.com/stretchr/objx v0.5.2 // indirect
+	github.com/stretchr/objx v0.5.3 // indirect
 	github.com/stretchr/testify v1.11.1 // indirect
 	github.com/subosito/gotenv v1.4.1 // indirect
-	github.com/tetafro/godot v1.5.4 // indirect
-	github.com/tidwall/gjson v1.18.0 // indirect
-	github.com/tidwall/match v1.1.1 // indirect
+	github.com/tetafro/godot v1.5.6 // indirect
+	github.com/tidwall/gjson v1.19.0 // indirect
+	github.com/tidwall/match v1.2.0 // indirect
 	github.com/tidwall/pretty v1.2.1 // indirect
 	github.com/tidwall/sjson v1.2.5 // indirect
-	github.com/timakin/bodyclose v0.0.0-20241222091800-1db5c5ca4d67 // indirect
+	github.com/timakin/bodyclose v0.0.0-20260129054331-73d1f95b84b4 // indirect
 	github.com/timonwong/loggercheck v0.11.0 // indirect
 	github.com/tomarrell/wrapcheck/v2 v2.12.0 // indirect
 	github.com/tommy-muehle/go-mnd/v2 v2.5.1 // indirect
 	github.com/ultraware/funlen v0.2.0 // indirect
 	github.com/ultraware/whitespace v0.2.0 // indirect
-	github.com/uudashr/gocognit v1.2.0 // indirect
-	github.com/uudashr/iface v1.4.1 // indirect
+	github.com/uudashr/gocognit v1.2.1 // indirect
+	github.com/uudashr/iface v1.4.2 // indirect
 	github.com/xen0n/gosmopolitan v1.3.0 // indirect
 	github.com/xo/terminfo v0.0.0-20220910002029-abceb7e1c41e // indirect
 	github.com/yagipy/maintidx v1.0.0 // indirect
@@ -218,36 +233,38 @@ require (
 	github.com/ykadowak/zerologlint v0.1.5 // indirect
 	gitlab.com/bosi/decorder v0.4.2 // indirect
 	go-simpler.org/musttag v0.14.0 // indirect
-	go-simpler.org/sloglint v0.11.1 // indirect
-	go.augendre.info/arangolint v0.3.1 // indirect
+	go-simpler.org/sloglint v0.12.0 // indirect
+	go.augendre.info/arangolint v0.4.0 // indirect
 	go.augendre.info/fatcontext v0.9.0 // indirect
 	go.opentelemetry.io/auto/sdk v1.2.1 // indirect
-	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.61.0 // indirect
-	go.opentelemetry.io/otel v1.41.0 // indirect
-	go.opentelemetry.io/otel/metric v1.41.0 // indirect
-	go.opentelemetry.io/otel/trace v1.41.0 // indirect
+	go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.69.0 // indirect
+	go.opentelemetry.io/otel v1.44.0 // indirect
+	go.opentelemetry.io/otel/metric v1.44.0 // indirect
+	go.opentelemetry.io/otel/trace v1.44.0 // indirect
 	go.uber.org/automaxprocs v1.6.0 // indirect
 	go.uber.org/multierr v1.10.0 // indirect
 	go.uber.org/zap v1.27.0 // indirect
 	go.yaml.in/yaml/v3 v3.0.4 // indirect
-	golang.org/x/crypto v0.52.0 // indirect
-	golang.org/x/exp/typeparams v0.0.0-20251023183803-a4bb9ffd2546 // indirect
-	golang.org/x/mod v0.35.0 // indirect
-	golang.org/x/net v0.55.0 // indirect
-	golang.org/x/sync v0.20.0 // indirect
-	golang.org/x/sys v0.45.0 // indirect
-	golang.org/x/telemetry v0.0.0-20260409153401-be6f6cb8b1fa // indirect
-	golang.org/x/text v0.37.0 // indirect
-	golang.org/x/tools v0.44.0 // indirect
-	golang.org/x/vuln v1.1.4 // indirect
-	google.golang.org/genai v1.37.0 // indirect
-	google.golang.org/genproto/googleapis/rpc v0.0.0-20251202230838-ff82c1b0f217 // indirect
-	google.golang.org/grpc v1.79.3 // indirect
-	google.golang.org/protobuf v1.36.10 // indirect
+	go.yaml.in/yaml/v4 v4.0.0-rc.6 // indirect
+	golang.org/x/crypto v0.55.0 // indirect
+	golang.org/x/exp/typeparams v0.0.0-20260209203927-2842357ff358 // indirect
+	golang.org/x/mod v0.39.0 // indirect
+	golang.org/x/net v0.58.0 // indirect
+	golang.org/x/sync v0.22.0 // indirect
+	golang.org/x/sys v0.47.0 // indirect
+	golang.org/x/telemetry v0.0.0-20260811182544-a038080d80e5 // indirect
+	golang.org/x/text v0.41.0 // indirect
+	golang.org/x/tools v0.49.0 // indirect
+	golang.org/x/vuln v1.7.0 // indirect
+	google.golang.org/api v0.288.0 // indirect
+	google.golang.org/genai v1.63.0 // indirect
+	google.golang.org/genproto/googleapis/rpc v0.0.0-20260706201446-f0a921348800 // indirect
+	google.golang.org/grpc v1.82.0 // indirect
+	google.golang.org/protobuf v1.36.11 // indirect
 	gopkg.in/ini.v1 v1.67.0 // indirect
 	gopkg.in/yaml.v2 v2.4.0 // indirect
 	gopkg.in/yaml.v3 v3.0.1 // indirect
-	honnef.co/go/tools v0.6.1 // indirect
+	honnef.co/go/tools v0.7.0 // indirect
 	mvdan.cc/gofumpt v0.9.2 // indirect
 	mvdan.cc/unparam v0.0.0-20251027182757-5beb8c8f8f15 // indirect
 )
diff --git a/tools/go.sum b/tools/go.sum
index 5b09bbb..20e4d63 100644
--- a/tools/go.sum
+++ b/tools/go.sum
@@ -2,6 +2,8 @@
 4d63.com/gocheckcompilerdirectives v1.3.0/go.mod h1:ofsJ4zx2QAuIP/NO/NAh1ig6R1Fb18/GI7RVMwz7kAY=
 4d63.com/gochecknoglobals v0.2.2 h1:H1vdnwnMaZdQW/N+NrkT1SZMTBmcwHe9Vq8lJcYYTtU=
 4d63.com/gochecknoglobals v0.2.2/go.mod h1:lLxwTQjL5eIesRbvnzIP3jZtG140FnTdz+AlMa+ogt0=
+charm.land/lipgloss/v2 v2.0.3 h1:yM2zJ4Cf5Y51b7RHIwioil4ApI/aypFXXVHSwlM6RzU=
+charm.land/lipgloss/v2 v2.0.3/go.mod h1:7myLU9iG/3xluAWzpY/fSxYYHCgoKTie7laxk6ATwXA=
 cloud.google.com/go v0.26.0/go.mod h1:aQUYkXzVsufM+DwF1aE+0xfcU+56JwCaLick0ClmMTw=
 cloud.google.com/go v0.34.0/go.mod h1:aQUYkXzVsufM+DwF1aE+0xfcU+56JwCaLick0ClmMTw=
 cloud.google.com/go v0.38.0/go.mod h1:990N+gfupTy94rShfmMCWGDn0LpTmnzTp2qbd1dvSRU=
@@ -19,8 +21,12 @@ cloud.google.com/go v0.62.0/go.mod h1:jmCYTdRCQuc1PHIIJ/maLInMho30T/Y0M4hTdTShOY
 cloud.google.com/go v0.65.0/go.mod h1:O5N8zS7uWy9vkA9vayVHs65eM1ubvY4h553ofrNHObY=
 cloud.google.com/go v0.121.2 h1:v2qQpN6Dx9x2NmwrqlesOt3Ys4ol5/lFZ6Mg1B7OJCg=
 cloud.google.com/go v0.121.2/go.mod h1:nRFlrHq39MNVWu+zESP2PosMWA0ryJw8KUBZ2iZpxbw=
+cloud.google.com/go v0.123.0 h1:2NAUJwPR47q+E35uaJeYoNhuNEM9kM8SjgRgdeOJUSE=
+cloud.google.com/go v0.123.0/go.mod h1:xBoMV08QcqUGuPW65Qfm1o9Y4zKZBpGS+7bImXLTAZU=
 cloud.google.com/go/auth v0.16.5 h1:mFWNQ2FEVWAliEQWpAdH80omXFokmrnbDhUS9cBywsI=
 cloud.google.com/go/auth v0.16.5/go.mod h1:utzRfHMP+Vv0mpOkTRQoWD2q3BatTOoWbA7gCc2dUhQ=
+cloud.google.com/go/auth v0.21.0 h1:g/QwYfYb2Ai6HH8oomAOyBaIHLbscZ4+T/F/f5JZHkE=
+cloud.google.com/go/auth v0.21.0/go.mod h1:M9o2Oz+YI2jAfxewJgb1vyI3vceHF+eohmxyzmrl+9s=
 cloud.google.com/go/bigquery v1.0.1/go.mod h1:i/xbL2UlR5RvWAURpBYZTtm/cXjCha9lbfbpx4poX+o=
 cloud.google.com/go/bigquery v1.3.0/go.mod h1:PjpwJnslEMmckchkHFfq+HTD2DmtT67aNFKH1/VBDHE=
 cloud.google.com/go/bigquery v1.4.0/go.mod h1:S8dzgnTigyfTmLBfrtrhyYhwRxG72rYxvftPBK2Dvzc=
@@ -67,18 +73,26 @@ github.com/BurntSushi/toml v0.3.1/go.mod h1:xHWCNGjB5oqiDr8zfno3MHue2Ht5sIBksp03
 github.com/BurntSushi/toml v1.6.0 h1:dRaEfpa2VI55EwlIW72hMRHdWouJeRF7TPYhI+AUQjk=
 github.com/BurntSushi/toml v1.6.0/go.mod h1:ukJfTF/6rtPPRCnwkur4qwRxa8vTRFBF0uk2lLoLwho=
 github.com/BurntSushi/xgb v0.0.0-20160522181843-27f122750802/go.mod h1:IVnqGOEym/WlBOVXweHU+Q+/VP0lqqI8lqeDx9IjBqo=
+github.com/ClickHouse/clickhouse-go-linter v1.2.0 h1:zbm174up3hTKjp0wKZVnTzRiG7tSF5XZF0FJG/MuCBI=
+github.com/ClickHouse/clickhouse-go-linter v1.2.0/go.mod h1:pLorS7ffPTfuUV9M0SJgfHA/h/WQPQUk2FWG9x74cQ4=
 github.com/Djarvur/go-err113 v0.1.1 h1:eHfopDqXRwAi+YmCUas75ZE0+hoBHJ2GQNLYRSxao4g=
 github.com/Djarvur/go-err113 v0.1.1/go.mod h1:IaWJdYFLg76t2ihfflPZnM1LIQszWOsFDh2hhhAVF6k=
 github.com/Masterminds/semver/v3 v3.4.0 h1:Zog+i5UMtVoCU8oKka5P7i9q9HgrJeGzI9SA1Xbatp0=
 github.com/Masterminds/semver/v3 v3.4.0/go.mod h1:4V+yj/TJE1HU9XfppCwVMZq3I84lprf4nC11bSS5beM=
+github.com/Masterminds/semver/v3 v3.5.0 h1:kQceYJfbupGfZOKZQg0kou0DgAKhzDg2NZPAwZ/2OOE=
+github.com/Masterminds/semver/v3 v3.5.0/go.mod h1:4V+yj/TJE1HU9XfppCwVMZq3I84lprf4nC11bSS5beM=
 github.com/MirrexOne/unqueryvet v1.4.0 h1:6KAkqqW2KUnkl9Z0VuTphC3IXRPoFqEkJEtyxxHj5eQ=
 github.com/MirrexOne/unqueryvet v1.4.0/go.mod h1:IWwCwMQlSWjAIteW0t+28Q5vouyktfujzYznSIWiuOg=
+github.com/MirrexOne/unqueryvet v1.5.4 h1:38QOxShO7JmMWT+eCdDMbcUgGCOeJphVkzzRgyLJgsQ=
+github.com/MirrexOne/unqueryvet v1.5.4/go.mod h1:fs9Zq6eh1LRIhsDIsxf9PONVUjYdFHdtkHIgZdJnyPU=
 github.com/OpenPeeDeeP/depguard/v2 v2.2.1 h1:vckeWVESWp6Qog7UZSARNqfu/cZqvki8zsuj3piCMx4=
 github.com/OpenPeeDeeP/depguard/v2 v2.2.1/go.mod h1:q4DKzC4UcVaAvcfd41CZh0PWpGgzrVxUYBlgKNGquUo=
 github.com/alecthomas/assert/v2 v2.11.0 h1:2Q9r3ki8+JYXvGsDyBXwH3LcJ+WK5D0gc5E8vS6K3D0=
 github.com/alecthomas/assert/v2 v2.11.0/go.mod h1:Bze95FyfUr7x34QZrjL+XP+0qgp/zg8yS+TtBj1WA3k=
 github.com/alecthomas/chroma/v2 v2.21.1 h1:FaSDrp6N+3pphkNKU6HPCiYLgm8dbe5UXIXcoBhZSWA=
 github.com/alecthomas/chroma/v2 v2.21.1/go.mod h1:NqVhfBR0lte5Ouh3DcthuUCTUpDC9cxBOfyMbMQPs3o=
+github.com/alecthomas/chroma/v2 v2.24.1 h1:m5ffpfZbIb++k8AqFEKy9uVgY12xIQtBsQlc6DfZJQM=
+github.com/alecthomas/chroma/v2 v2.24.1/go.mod h1:l+ohZ9xRXIbGe7cIW+YZgOGbvuVLjMps/FYN/CwuabI=
 github.com/alecthomas/go-check-sumtype v0.3.1 h1:u9aUvbGINJxLVXiFvHUlPEaD7VDULsrxJb4Aq31NLkU=
 github.com/alecthomas/go-check-sumtype v0.3.1/go.mod h1:A8TSiN3UPRw3laIgWEUOHHLPa6/r9MtoigdlP5h3K/E=
 github.com/alecthomas/repr v0.5.2 h1:SU73FTI9D1P5UNtvseffFSGmdNci/O6RsqzeXJtP0Qs=
@@ -92,6 +106,8 @@ github.com/alexkohler/nakedret/v2 v2.0.6 h1:ME3Qef1/KIKr3kWX3nti3hhgNxw6aqN5pZmQ
 github.com/alexkohler/nakedret/v2 v2.0.6/go.mod h1:l3RKju/IzOMQHmsEvXwkqMDzHHvurNQfAgE1eVmT40Q=
 github.com/alexkohler/prealloc v1.0.1 h1:A9P1haqowqUxWvU9nk6tQ7YktXIHf+LQM9wPRhuteEE=
 github.com/alexkohler/prealloc v1.0.1/go.mod h1:fT39Jge3bQrfA7nPMDngUfvUbQGQeJyGQnR+913SCig=
+github.com/alexkohler/prealloc v1.1.0 h1:cKGRBqlXw5iyQGLYhrXrDlcHxugXpTq4tQ5c91wkf8M=
+github.com/alexkohler/prealloc v1.1.0/go.mod h1:fT39Jge3bQrfA7nPMDngUfvUbQGQeJyGQnR+913SCig=
 github.com/alfatraining/structtag v1.0.0 h1:2qmcUqNcCoyVJ0up879K614L9PazjBSFruTB0GOFjCc=
 github.com/alfatraining/structtag v1.0.0/go.mod h1:p3Xi5SwzTi+Ryj64DqjLWz7XurHxbGsq6y3ubePJPus=
 github.com/alingse/asasalint v0.0.11 h1:SFwnQXJ49Kx/1GghOFz1XGqHYKp21Kq1nHad/0WQRnw=
@@ -100,12 +116,20 @@ github.com/alingse/nilnesserr v0.2.0 h1:raLem5KG7EFVb4UIDAXgrv3N2JIaffeKNtcEXkEW
 github.com/alingse/nilnesserr v0.2.0/go.mod h1:1xJPrXonEtX7wyTq8Dytns5P2hNzoWymVUIaKm4HNFg=
 github.com/anthropics/anthropic-sdk-go v1.19.0 h1:mO6E+ffSzLRvR/YUH9KJC0uGw0uV8GjISIuzem//3KE=
 github.com/anthropics/anthropic-sdk-go v1.19.0/go.mod h1:WTz31rIUHUHqai2UslPpw5CwXrQP3geYBioRV4WOLvE=
+github.com/anthropics/anthropic-sdk-go v1.57.0 h1:iEAcPbUKfJ2Iqz9uN/jEndCNW2+x7OYLHDidXDhPjI0=
+github.com/anthropics/anthropic-sdk-go v1.57.0/go.mod h1:3EfIfmFqxH6rbiLcIP4tPFyXL/IHakx2wDG4OU+TIEI=
 github.com/ashanbrown/forbidigo/v2 v2.3.0 h1:OZZDOchCgsX5gvToVtEBoV2UWbFfI6RKQTir2UZzSxo=
 github.com/ashanbrown/forbidigo/v2 v2.3.0/go.mod h1:5p6VmsG5/1xx3E785W9fouMxIOkvY2rRV9nMdWadd6c=
+github.com/ashanbrown/forbidigo/v2 v2.3.1 h1:KAZijvQ7zeIBKbhikT4jCm0TLYXC4u78bTiLh/8JROI=
+github.com/ashanbrown/forbidigo/v2 v2.3.1/go.mod h1:2QDkLTzU6TV937eFROamXrW92M3paehdae4HCDCOZCM=
 github.com/ashanbrown/makezero/v2 v2.1.0 h1:snuKYMbqosNokUKm+R6/+vOPs8yVAi46La7Ck6QYSaE=
 github.com/ashanbrown/makezero/v2 v2.1.0/go.mod h1:aEGT/9q3S8DHeE57C88z2a6xydvgx8J5hgXIGWgo0MY=
+github.com/ashanbrown/makezero/v2 v2.2.1 h1:A7uU8dgB1PA9aelTxHMfHIQ8Qev8AB3JLxJUBUsejqM=
+github.com/ashanbrown/makezero/v2 v2.2.1/go.mod h1:aEGT/9q3S8DHeE57C88z2a6xydvgx8J5hgXIGWgo0MY=
 github.com/aymanbagabas/go-osc52/v2 v2.0.1 h1:HwpRHbFMcZLEVr42D4p7XBqjyuxQH5SMiErDT4WkJ2k=
 github.com/aymanbagabas/go-osc52/v2 v2.0.1/go.mod h1:uYgXzlJ7ZpABp8OJ+exZzJJhRNQ2ASbcXHWsFqH8hp8=
+github.com/bahlo/generic-list-go v0.2.0 h1:5sz/EEAK+ls5wF+NeqDpk5+iNdMDXrh3z3nPnH1Wvgk=
+github.com/bahlo/generic-list-go v0.2.0/go.mod h1:2KvAjgMlE5NNynlg/5iLrrCCZ2+5xWbdbCW3pNTGyYg=
 github.com/beorn7/perks v0.0.0-20180321164747-3a771d992973/go.mod h1:Dwedo/Wpr24TaqPxmxbtue+5NUziq4I4S80YR8gNf3Q=
 github.com/beorn7/perks v1.0.0/go.mod h1:KWe93zE9D1o94FZ5RNwFwVgaQK1VOXiVxmqh+CedLV8=
 github.com/beorn7/perks v1.0.1 h1:VlbKKnNfV8bJzeqoa4cOKqO6bYr3WgKZxO8Z16+hsOM=
@@ -118,12 +142,18 @@ github.com/bombsimon/wsl/v4 v4.7.0 h1:1Ilm9JBPRczjyUs6hvOPKvd7VL1Q++PL8M0SXBDf+j
 github.com/bombsimon/wsl/v4 v4.7.0/go.mod h1:uV/+6BkffuzSAVYD+yGyld1AChO7/EuLrCF/8xTiapg=
 github.com/bombsimon/wsl/v5 v5.3.0 h1:nZWREJFL6U3vgW/B1lfDOigl+tEF6qgs6dGGbFeR0UM=
 github.com/bombsimon/wsl/v5 v5.3.0/go.mod h1:Gp8lD04z27wm3FANIUPZycXp+8huVsn0oxc+n4qfV9I=
+github.com/bombsimon/wsl/v5 v5.8.0 h1:JTkyfs4yl8SPejrCF2GdABXE+mO1WvM7iUYzRWlsxDs=
+github.com/bombsimon/wsl/v5 v5.8.0/go.mod h1:AbOLsulgkqP4ZnitHf9gwPtCOGlrzkk0jb0uNxRSY0o=
 github.com/breml/bidichk v0.3.3 h1:WSM67ztRusf1sMoqH6/c4OBCUlRVTKq+CbSeo0R17sE=
 github.com/breml/bidichk v0.3.3/go.mod h1:ISbsut8OnjB367j5NseXEGGgO/th206dVa427kR8YTE=
 github.com/breml/errchkjson v0.4.1 h1:keFSS8D7A2T0haP9kzZTi7o26r7kE3vymjZNeNDRDwg=
 github.com/breml/errchkjson v0.4.1/go.mod h1:a23OvR6Qvcl7DG/Z4o0el6BRAjKnaReoPQFciAl9U3s=
+github.com/buger/jsonparser v1.2.0 h1:4EFcvK1kD4jyj6YqNK6skK6w+y7FHHBR+XBCtxwu/6g=
+github.com/buger/jsonparser v1.2.0/go.mod h1:6RYKKt7H4d4+iWqouImQ9R2FZql3VbhNgx27UK13J/0=
 github.com/butuzov/ireturn v0.4.0 h1:+s76bF/PfeKEdbG8b54aCocxXmi0wvYdOVsWxVO7n8E=
 github.com/butuzov/ireturn v0.4.0/go.mod h1:ghI0FrCmap8pDWZwfPisFD1vEc56VKH4NpQUxDHta70=
+github.com/butuzov/ireturn v0.4.1 h1:vWb3NO4t77iku/sjCQ/2pHTQeOmxEhjIriJqRLg1Y+I=
+github.com/butuzov/ireturn v0.4.1/go.mod h1:q+DXKzTDV5guNuXLnIab9fKXizTn2miZHLhxH7V/GB4=
 github.com/butuzov/mirror v1.3.0 h1:HdWCXzmwlQHdVhwvsfBb2Au0r3HyINry3bDWLYXiKoc=
 github.com/butuzov/mirror v1.3.0/go.mod h1:AEij0Z8YMALaq4yQj9CPPVYOyJQyiexpQEQgihajRfI=
 github.com/catenacyber/perfsprint v0.10.1 h1:u7Riei30bk46XsG8nknMhKLXG9BcXz3+3tl/WpKm0PQ=
@@ -139,20 +169,36 @@ github.com/charithe/durationcheck v0.0.11 h1:g1/EX1eIiKS57NTWsYtHDZ/APfeXKhye1Di
 github.com/charithe/durationcheck v0.0.11/go.mod h1:x5iZaixRNl8ctbM+3B2RrPG5t856TxRyVQEnbIEM2X4=
 github.com/charmbracelet/colorprofile v0.2.3-0.20250311203215-f60798e515dc h1:4pZI35227imm7yK2bGPcfpFEmuY1gc2YSTShr4iJBfs=
 github.com/charmbracelet/colorprofile v0.2.3-0.20250311203215-f60798e515dc/go.mod h1:X4/0JoqgTIPSFcRA/P6INZzIuyqdFY5rm8tb41s9okk=
+github.com/charmbracelet/colorprofile v0.4.3 h1:QPa1IWkYI+AOB+fE+mg/5/4HRMZcaXex9t5KX76i20Q=
+github.com/charmbracelet/colorprofile v0.4.3/go.mod h1:/zT4BhpD5aGFpqQQqw7a+VtHCzu+zrQtt1zhMt9mR4Q=
 github.com/charmbracelet/lipgloss v1.1.0 h1:vYXsiLHVkK7fp74RkV7b2kq9+zDLoEU4MZoFqR/noCY=
 github.com/charmbracelet/lipgloss v1.1.0/go.mod h1:/6Q8FR2o+kj8rz4Dq0zQc3vYf7X+B0binUUBwA0aL30=
+github.com/charmbracelet/ultraviolet v0.0.0-20251205161215-1948445e3318 h1:OqDqxQZliC7C8adA7KjelW3OjtAxREfeHkNcd66wpeI=
+github.com/charmbracelet/ultraviolet v0.0.0-20251205161215-1948445e3318/go.mod h1:Y6kE2GzHfkyQQVCSL9r2hwokSrIlHGzZG+71+wDYSZI=
 github.com/charmbracelet/x/ansi v0.8.0 h1:9GTq3xq9caJW8ZrBTe0LIe2fvfLR/bYXKTx2llXn7xE=
 github.com/charmbracelet/x/ansi v0.8.0/go.mod h1:wdYl/ONOLHLIVmQaxbIYEC/cRKOQyjTkowiI4blgS9Q=
+github.com/charmbracelet/x/ansi v0.11.7 h1:kzv1kJvjg2S3r9KHo8hDdHFQLEqn4RBCb39dAYC84jI=
+github.com/charmbracelet/x/ansi v0.11.7/go.mod h1:9qGpnAVYz+8ACONkZBUWPtL7lulP9No6p1epAihUZwQ=
 github.com/charmbracelet/x/cellbuf v0.0.13-0.20250311204145-2c3ea96c31dd h1:vy0GVL4jeHEwG5YOXDmi86oYw2yuYUGqz6a8sLwg0X8=
 github.com/charmbracelet/x/cellbuf v0.0.13-0.20250311204145-2c3ea96c31dd/go.mod h1:xe0nKWGd3eJgtqZRaN9RjMtK7xUYchjzPr7q6kcvCCs=
 github.com/charmbracelet/x/term v0.2.1 h1:AQeHeLZ1OqSXhrAWpYUtZyX1T3zVxfpZuEQMIQaGIAQ=
 github.com/charmbracelet/x/term v0.2.1/go.mod h1:oQ4enTYFV7QN4m0i9mzHrViD7TQKvNEEkHUMCmsxdUg=
+github.com/charmbracelet/x/term v0.2.2 h1:xVRT/S2ZcKdhhOuSP4t5cLi5o+JxklsoEObBSgfgZRk=
+github.com/charmbracelet/x/term v0.2.2/go.mod h1:kF8CY5RddLWrsgVwpw4kAa6TESp6EB5y3uxGLeCqzAI=
+github.com/charmbracelet/x/termios v0.1.1 h1:o3Q2bT8eqzGnGPOYheoYS8eEleT5ZVNYNy8JawjaNZY=
+github.com/charmbracelet/x/termios v0.1.1/go.mod h1:rB7fnv1TgOPOyyKRJ9o+AsTU/vK5WHJ2ivHeut/Pcwo=
+github.com/charmbracelet/x/windows v0.2.2 h1:IofanmuvaxnKHuV04sC0eBy/smG6kIKrWG2/jYn2GuM=
+github.com/charmbracelet/x/windows v0.2.2/go.mod h1:/8XtdKZzedat74NQFn0NGlGL4soHB0YQZrETF96h75k=
 github.com/chzyer/logex v1.1.10/go.mod h1:+Ywpsq7O8HXn0nuIou7OrIPyXbp3wmkHB+jjWRnGsAI=
 github.com/chzyer/readline v0.0.0-20180603132655-2972be24d48e/go.mod h1:nSuG5e5PlCu98SY8svDHJxuZscDgtXS6KTTbou5AhLI=
 github.com/chzyer/test v0.0.0-20180213035817-a1ea475d72b1/go.mod h1:Q3SI9o4m/ZMnBNeIyt5eFwwo7qiLfzFZmjNmxjkiQlU=
 github.com/ckaznocha/intrange v0.3.1 h1:j1onQyXvHUsPWujDH6WIjhyH26gkRt/txNlV7LspvJs=
 github.com/ckaznocha/intrange v0.3.1/go.mod h1:QVepyz1AkUoFQkpEqksSYpNpUo3c5W7nWh/s6SHIJJk=
 github.com/client9/misspell v0.3.4/go.mod h1:qj6jICC3Q7zFZvVWo7KLAzC3yx5G7kyvSDkc90ppPyw=
+github.com/clipperhouse/displaywidth v0.11.0 h1:lBc6kY44VFw+TDx4I8opi/EtL9m20WSEFgwIwO+UVM8=
+github.com/clipperhouse/displaywidth v0.11.0/go.mod h1:bkrFNkf81G8HyVqmKGxsPufD3JhNl3dSqnGhOoSD/o0=
+github.com/clipperhouse/uax29/v2 v2.7.0 h1:+gs4oBZ2gPfVrKPthwbMzWZDaAFPGYK72F0NJv2v7Vk=
+github.com/clipperhouse/uax29/v2 v2.7.0/go.mod h1:EFJ2TJMRUaplDxHKj1qAEhCtQPW2tJSwu5BF98AuoVM=
 github.com/cncf/udpa/go v0.0.0-20191209042840-269d4d468f6f/go.mod h1:M8M6+tZqaGXZJjfX53e64911xZQV5JYwmTeXPW+k8Sc=
 github.com/cpuguy83/go-md2man/v2 v2.0.6/go.mod h1:oOW0eioCTA6cOiMLiUPZOpcVxMig6NIQQ7OS05n1F4g=
 github.com/curioswitch/go-reassign v0.3.0 h1:dh3kpQHuADL3cobV/sSGETA8DOv457dwl+fbBAhrQPs=
@@ -166,10 +212,14 @@ github.com/dave/jennifer v1.7.1/go.mod h1:nXbxhEmQfOZhWml3D1cDK5M1FLnMSozpbFN/m3
 github.com/davecgh/go-spew v1.1.0/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38=
 github.com/davecgh/go-spew v1.1.1 h1:vj9j/u1bqnvCEfJOwUhtlOARqs3+rkHYY13jYWTU97c=
 github.com/davecgh/go-spew v1.1.1/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38=
+github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc h1:U9qPSI2PIWSS1VwoXQT9A3Wy9MM3WgvqSxFWenqJduM=
+github.com/davecgh/go-spew v1.1.2-0.20180830191138-d8f796af33cc/go.mod h1:J7Y8YcW2NihsgmVo/mv3lAwl/skON4iLHjSsI+c5H38=
 github.com/denis-tingaikin/go-header v0.5.0 h1:SRdnP5ZKvcO9KKRP1KJrhFR3RrlGuD+42t4429eC9k8=
 github.com/denis-tingaikin/go-header v0.5.0/go.mod h1:mMenU5bWrok6Wl2UsZjy+1okegmwQ3UgWl4V1D8gjlY=
 github.com/dlclark/regexp2 v1.11.5 h1:Q/sSnsKerHeCkc/jSTNq1oCm7KiVgUMZRDUoRu0JQZQ=
 github.com/dlclark/regexp2 v1.11.5/go.mod h1:DHkYz0B9wPfa6wondMfaivmHpzrQ3v9q8cnmRbL6yW8=
+github.com/dlclark/regexp2 v1.12.0 h1:0j4c5qQmnC6XOWNjP3PIXURXN2gWx76rd3KvgdPkCz8=
+github.com/dlclark/regexp2 v1.12.0/go.mod h1:DHkYz0B9wPfa6wondMfaivmHpzrQ3v9q8cnmRbL6yW8=
 github.com/envoyproxy/go-control-plane v0.9.0/go.mod h1:YTl/9mNaCwkRvm6d1a2C3ymFceY/DCBVvsKhRF0iEA4=
 github.com/envoyproxy/go-control-plane v0.9.1-0.20191026205805-5f8ba28d4473/go.mod h1:YTl/9mNaCwkRvm6d1a2C3ymFceY/DCBVvsKhRF0iEA4=
 github.com/envoyproxy/go-control-plane v0.9.4/go.mod h1:6rpuAdCZL397s3pYoYcLgu1mIlRU8Am5FuJP05cCM98=
@@ -178,10 +228,14 @@ github.com/ettle/strcase v0.2.0 h1:fGNiVF21fHXpX1niBgk0aROov1LagYsOwV/xqKDKR/Q=
 github.com/ettle/strcase v0.2.0/go.mod h1:DajmHElDSaX76ITe3/VHVyMin4LWSJN5Z909Wp+ED1A=
 github.com/fatih/color v1.18.0 h1:S8gINlzdQ840/4pfAwic/ZE0djQEH3wM94VfqLTZcOM=
 github.com/fatih/color v1.18.0/go.mod h1:4FelSpRwEGDpQ12mAdzqdOukCy4u8WUtOY6lkT/6HfU=
+github.com/fatih/color v1.19.0 h1:Zp3PiM21/9Ld6FzSKyL5c/BULoe/ONr9KlbYVOfG8+w=
+github.com/fatih/color v1.19.0/go.mod h1:zNk67I0ZUT1bEGsSGyCZYZNrHuTkJJB+r6Q9VuMi0LE=
 github.com/fatih/structtag v1.2.0 h1:/OdNE99OxoI/PqaW/SuSK9uxxT3f/tcSZgon/ssNSx4=
 github.com/fatih/structtag v1.2.0/go.mod h1:mBJUNpUnHmRKrKlQQlmCrh5PuhftFbNv8Ys4/aAZl94=
 github.com/felixge/httpsnoop v1.0.4 h1:NFTV2Zj1bL4mc9sqWACXbQFVBBg2W3GPvqp8/ESS2Wg=
 github.com/felixge/httpsnoop v1.0.4/go.mod h1:m8KPJKqk1gH5J9DgRY2ASl2lWCfGKXixSwevea8zH2U=
+github.com/felixge/httpsnoop v1.1.0 h1:3YtUj32ZZkqZtt3sZZsClsymw/QDuVfpNhoA31zeORc=
+github.com/felixge/httpsnoop v1.1.0/go.mod h1:Zqxgdd+1Rkcz8euOqdr7lqgCRJztwr5hp9vDSi5UZCE=
 github.com/firefart/nonamedreturns v1.0.6 h1:vmiBcKV/3EqKY3ZiPxCINmpS431OcE1S47AQUwhrg8E=
 github.com/firefart/nonamedreturns v1.0.6/go.mod h1:R8NisJnSIpvPWheCq0mNRXJok6D8h7fagJTF8EMEwCo=
 github.com/frankban/quicktest v1.14.3 h1:FJKSZTDHjyhriyC81FLQ0LY93eSai0ZyR/ZIkd3ZUKE=
@@ -192,6 +246,8 @@ github.com/fzipp/gocyclo v0.6.0 h1:lsblElZG7d3ALtGMx9fmxeTKZaLLpU8mET09yN4BBLo=
 github.com/fzipp/gocyclo v0.6.0/go.mod h1:rXPyn8fnlpa0R2csP/31uerbiVBugk5whMdlyaLkLoA=
 github.com/ghostiam/protogetter v0.3.18 h1:yEpghRGtP9PjKvVXtEzGpYfQj1Wl/ZehAfU6fr62Lfo=
 github.com/ghostiam/protogetter v0.3.18/go.mod h1:FjIu5Yfs6FT391m+Fjp3fbAYJ6rkL/J6ySpZBfnODuI=
+github.com/ghostiam/protogetter v0.3.20 h1:oW7OPFit2FxZOpmMRPP9FffU4uUpfeE/rEdE1f+MzD0=
+github.com/ghostiam/protogetter v0.3.20/go.mod h1:FjIu5Yfs6FT391m+Fjp3fbAYJ6rkL/J6ySpZBfnODuI=
 github.com/go-critic/go-critic v0.14.3 h1:5R1qH2iFeo4I/RJU8vTezdqs08Egi4u5p6vOESA0pog=
 github.com/go-critic/go-critic v0.14.3/go.mod h1:xwntfW6SYAd7h1OqDzmN6hBX/JxsEKl5up/Y2bsxgVQ=
 github.com/go-gl/glfw v0.0.0-20190409004039-e6da0acd62b1/go.mod h1:vR7hzQXu2zJy9AVAgeJqvqgH9Q5CA+iKCZ2gyEVpxRU=
@@ -234,12 +290,16 @@ github.com/go-toolsmith/typep v1.1.0 h1:fIRYDyF+JywLfqzyhdiHzRop/GQDxxNhLGQ6gFUN
 github.com/go-toolsmith/typep v1.1.0/go.mod h1:fVIw+7zjdsMxDA3ITWnH1yOiw1rnTQKCsF/sk2H/qig=
 github.com/go-viper/mapstructure/v2 v2.4.0 h1:EBsztssimR/CONLSZZ04E8qAkxNYq4Qp9LvH92wZUgs=
 github.com/go-viper/mapstructure/v2 v2.4.0/go.mod h1:oJDH3BJKyqBA2TXFhDsKDGDTlndYOZ6rGS0BRZIxGhM=
+github.com/go-viper/mapstructure/v2 v2.5.0 h1:vM5IJoUAy3d7zRSVtIwQgBj7BiWtMPfmPEgAXnvj1Ro=
+github.com/go-viper/mapstructure/v2 v2.5.0/go.mod h1:oJDH3BJKyqBA2TXFhDsKDGDTlndYOZ6rGS0BRZIxGhM=
 github.com/go-xmlfmt/xmlfmt v1.1.3 h1:t8Ey3Uy7jDSEisW2K3somuMKIpzktkWptA0iFCnRUWY=
 github.com/go-xmlfmt/xmlfmt v1.1.3/go.mod h1:aUCEOzzezBEjDBbFBoSiya/gduyIiWYRP6CnSFIV8AM=
 github.com/gobwas/glob v0.2.3 h1:A4xDbljILXROh+kObIiy5kIaPYD8e96x1tgBhUI5J+Y=
 github.com/gobwas/glob v0.2.3/go.mod h1:d3Ez4x06l9bZtSvzIay5+Yzi0fmZzPgnTbPcKjJAkT8=
 github.com/godoc-lint/godoc-lint v0.11.1 h1:z9as8Qjiy6miRIa3VRymTa+Gt2RLnGICVikcvlUVOaA=
 github.com/godoc-lint/godoc-lint v0.11.1/go.mod h1:BAqayheFSuZrEAqCRxgw9MyvsM+S/hZwJbU1s/ejRj8=
+github.com/godoc-lint/godoc-lint v0.11.2 h1:Bp0FkJWoSdNsBikdNgIcgtaoo+xz6I/Y9s5WSBQUeeM=
+github.com/godoc-lint/godoc-lint v0.11.2/go.mod h1:iVpGdL1JCikNH2gGeAn3Hh+AgN5Gx/I/cxV+91L41jo=
 github.com/gofrs/flock v0.13.0 h1:95JolYOvGMqeH31+FC7D2+uULf6mG61mEZ/A8dRYMzw=
 github.com/gofrs/flock v0.13.0/go.mod h1:jxeyy9R1auM5S6JYDBhDt+E2TCo7DkratH4Pgi8P+Z0=
 github.com/gogo/protobuf v1.1.1/go.mod h1:r8qH/GZQm5c6nD/R0oafs1akxWv10x8SbQlK7atdtwQ=
@@ -276,20 +336,30 @@ github.com/golangci/asciicheck v0.5.0 h1:jczN/BorERZwK8oiFBOGvlGPknhvq0bjnysTj4n
 github.com/golangci/asciicheck v0.5.0/go.mod h1:5RMNAInbNFw2krqN6ibBxN/zfRFa9S6tA1nPdM0l8qQ=
 github.com/golangci/dupl v0.0.0-20250308024227-f665c8d69b32 h1:WUvBfQL6EW/40l6OmeSBYQJNSif4O11+bmWEz+C7FYw=
 github.com/golangci/dupl v0.0.0-20250308024227-f665c8d69b32/go.mod h1:NUw9Zr2Sy7+HxzdjIULge71wI6yEg1lWQr7Evcu8K0E=
+github.com/golangci/dupl v0.0.0-20260401084720-c99c5cf5c202 h1:CbTB8KpqnViI6lIXxp03Oclc4VFHi3K4BWC1TacsZ+A=
+github.com/golangci/dupl v0.0.0-20260401084720-c99c5cf5c202/go.mod h1:NUw9Zr2Sy7+HxzdjIULge71wI6yEg1lWQr7Evcu8K0E=
 github.com/golangci/go-printf-func-name v0.1.1 h1:hIYTFJqAGp1iwoIfsNTpoq1xZAarogrvjO9AfiW3B4U=
 github.com/golangci/go-printf-func-name v0.1.1/go.mod h1:Es64MpWEZbh0UBtTAICOZiB+miW53w/K9Or/4QogJss=
 github.com/golangci/gofmt v0.0.0-20250106114630-d62b90e6713d h1:viFft9sS/dxoYY0aiOTsLKO2aZQAPT4nlQCsimGcSGE=
 github.com/golangci/gofmt v0.0.0-20250106114630-d62b90e6713d/go.mod h1:ivJ9QDg0XucIkmwhzCDsqcnxxlDStoTl89jDMIoNxKY=
 github.com/golangci/golangci-lint/v2 v2.8.0 h1:wJnr3hJWY3eVzOUcfwbDc2qbi2RDEpvLmQeNFaPSNYA=
 github.com/golangci/golangci-lint/v2 v2.8.0/go.mod h1:xl+HafQ9xoP8rzw0z5AwnO5kynxtb80e8u02Ej/47RI=
+github.com/golangci/golangci-lint/v2 v2.12.2 h1:7+d1uY0bq1MU2UV3R5pW5Q7QWdcoq4naMRXM+gsJKrs=
+github.com/golangci/golangci-lint/v2 v2.12.2/go.mod h1:opqHHuIcTG2R+4akzWMd4o1BnD9/1LcjICWOujr91U8=
 github.com/golangci/golines v0.14.0 h1:xt9d3RKBjhasA3qpoXs99J2xN2t6eBlpLHt0TrgyyXc=
 github.com/golangci/golines v0.14.0/go.mod h1:gf555vPG2Ia7mmy2mzmhVQbVjuK8Orw0maR1G4vVAAQ=
+github.com/golangci/golines v0.15.0 h1:Qnph25g8Y1c5fdo1X7GaRDGgnMHgnxh4Gk4VfPTtRx0=
+github.com/golangci/golines v0.15.0/go.mod h1:AZjXd23tbHMpowhtnGlj9KCNsysj72aeZVVHnVcZx10=
 github.com/golangci/misspell v0.7.0 h1:4GOHr/T1lTW0hhR4tgaaV1WS/lJ+ncvYCoFKmqJsj0c=
 github.com/golangci/misspell v0.7.0/go.mod h1:WZyyI2P3hxPY2UVHs3cS8YcllAeyfquQcKfdeE9AFVg=
+github.com/golangci/misspell v0.8.0 h1:qvxQhiE2/5z+BVRo1kwYA8yGz+lOlu5Jfvtx2b04Jbg=
+github.com/golangci/misspell v0.8.0/go.mod h1:WZyyI2P3hxPY2UVHs3cS8YcllAeyfquQcKfdeE9AFVg=
 github.com/golangci/plugin-module-register v0.1.2 h1:e5WM6PO6NIAEcij3B053CohVp3HIYbzSuP53UAYgOpg=
 github.com/golangci/plugin-module-register v0.1.2/go.mod h1:1+QGTsKBvAIvPvoY/os+G5eoqxWn70HYDm2uvUyGuVw=
 github.com/golangci/revgrep v0.8.0 h1:EZBctwbVd0aMeRnNUsFogoyayvKHyxlV3CdUA46FX2s=
 github.com/golangci/revgrep v0.8.0/go.mod h1:U4R/s9dlXZsg8uJmaR1GrloUr14D7qDl8gi2iPXJH8k=
+github.com/golangci/rowserrcheck v0.0.0-20260419091836-c5f79b8a11ba h1:lqtcnSMDuuJdu/LrKWi5RJzpSNLOJXYe/nzQutTI5kg=
+github.com/golangci/rowserrcheck v0.0.0-20260419091836-c5f79b8a11ba/go.mod h1:sCBNcpRmhJCtbFGz49+IM3ETTFf7QdJ30AeYCd43NKk=
 github.com/golangci/swaggoswag v0.0.0-20250504205917-77f2aca3143e h1:ai0EfmVYE2bRA5htgAG9r7s3tHsfjIhN98WshBTJ9jM=
 github.com/golangci/swaggoswag v0.0.0-20250504205917-77f2aca3143e/go.mod h1:Vrn4B5oR9qRwM+f54koyeH3yzphlecwERs0el27Fr/s=
 github.com/golangci/unconvert v0.0.0-20250410112200-a129a6e6413e h1:gD6P7NEo7Eqtt0ssnqSJNNndxe69DOQ24A5h7+i3KpM=
@@ -323,6 +393,7 @@ github.com/google/pprof v0.0.0-20200430221834-fc25d7d30c6d/go.mod h1:ZgVRPoUq/hf
 github.com/google/pprof v0.0.0-20200708004538-1a94d8640e99/go.mod h1:ZgVRPoUq/hfqzAqh7sHMqb3I9Rq5C59dIz2SbBwJ4eM=
 github.com/google/pprof v0.0.0-20250820193118-f64d9cf942d6 h1:EEHtgt9IwisQ2AZ4pIsMjahcegHh6rmhqxzIRQIyepY=
 github.com/google/pprof v0.0.0-20250820193118-f64d9cf942d6/go.mod h1:I6V7YzU0XDpsHqbsyrghnFZLO1gwK6NPTNvmetQIk9U=
+github.com/google/pprof v0.0.0-20260709232956-b9395ee17fa0 h1:du0WGc8xSKq/++e0cglxhS/mXVqsR7+c7jLEi5Vqduw=
 github.com/google/renameio v0.1.0 h1:GOZbcHa3HfsPKPlmyPyN2KEohoMXOhdMbHrvbpl2QaA=
 github.com/google/renameio v0.1.0/go.mod h1:KWCgfxg9yswjAJkECMjeO8J8rahYeXnNhOm40UhjYkI=
 github.com/google/s2a-go v0.1.9 h1:LGD7gtMgezd8a/Xak7mEWL0PjoTQFvpRudN895yqKW0=
@@ -331,14 +402,20 @@ github.com/google/uuid v1.6.0 h1:NIvaJDMOsjHA8n1jAhLSgzrAzy1Hgr+hNrb57e+94F0=
 github.com/google/uuid v1.6.0/go.mod h1:TIyPZe4MgqvfeYDBFedMoGGpEw/LqOeaOT+nhxU+yHo=
 github.com/googleapis/enterprise-certificate-proxy v0.3.6 h1:GW/XbdyBFQ8Qe+YAmFU9uHLo7OnF5tL52HFAgMmyrf4=
 github.com/googleapis/enterprise-certificate-proxy v0.3.6/go.mod h1:MkHOF77EYAE7qfSuSS9PU6g4Nt4e11cnsDUowfwewLA=
+github.com/googleapis/enterprise-certificate-proxy v0.3.18 h1:hvVi34VucdrV1IIsiWuqYM8kutw/92MxNEFxCJZEh0k=
+github.com/googleapis/enterprise-certificate-proxy v0.3.18/go.mod h1:rSEsBUemEBZEexP2y6jPp16LUmUbjmSbcPMQizR0o4k=
 github.com/googleapis/gax-go/v2 v2.0.4/go.mod h1:0Wqv26UfaUD9n4G6kQubkQ+KchISgw+vpHVxEJEs9eg=
 github.com/googleapis/gax-go/v2 v2.0.5/go.mod h1:DWXyrwAJ9X0FpwwEdw+IPEYBICEFu5mhpdKc/us6bOk=
 github.com/googleapis/gax-go/v2 v2.15.0 h1:SyjDc1mGgZU5LncH8gimWo9lW1DtIfPibOG81vgd/bo=
 github.com/googleapis/gax-go/v2 v2.15.0/go.mod h1:zVVkkxAQHa1RQpg9z2AUCMnKhi0Qld9rcmyfL1OZhoc=
+github.com/googleapis/gax-go/v2 v2.23.0 h1:Tchl7qkvE7Ip3y+ztvNufYFvkfqTe7NfLTYGIdJRLuE=
+github.com/googleapis/gax-go/v2 v2.23.0/go.mod h1:rBQKOVJCdb8IFEzg+FCwlt1LP/xMDGuqUXhUG+XMXEg=
 github.com/gookit/assert v0.1.1 h1:lh3GcawXe/p+cU7ESTZ5Ui3Sm/x8JWpIis4/1aF0mY0=
 github.com/gookit/assert v0.1.1/go.mod h1:jS5bmIVQZTIwk42uXl4lyj4iaaxx32tqH16CFj0VX2E=
 github.com/gookit/color v1.6.0 h1:JjJXBTk1ETNyqyilJhkTXJYYigHG24TM9Xa2M1xAhRA=
 github.com/gookit/color v1.6.0/go.mod h1:9ACFc7/1IpHGBW8RwuDm/0YEnhg3dwwXpoMsmtyHfjs=
+github.com/gookit/color v1.6.1 h1:KoTnDxJPRgrL0SoX0f8rCFg2zI0t4E3GZZBMo2nN8LU=
+github.com/gookit/color v1.6.1/go.mod h1:9ACFc7/1IpHGBW8RwuDm/0YEnhg3dwwXpoMsmtyHfjs=
 github.com/gordonklaus/ineffassign v0.2.0 h1:Uths4KnmwxNJNzq87fwQQDDnbNb7De00VOk9Nu0TySs=
 github.com/gordonklaus/ineffassign v0.2.0/go.mod h1:TIpymnagPSexySzs7F9FnO1XFTy8IT3a59vmZp5Y9Lw=
 github.com/gorilla/websocket v1.5.3 h1:saDtZ6Pbx/0u+bgYQ3q96pZgCzfhKXGPqt7kZ72aNNg=
@@ -362,6 +439,8 @@ github.com/hashicorp/go-uuid v1.0.3/go.mod h1:6SBZvOh/SIDV7/2o3Jml5SYk/TvGqwFJ/b
 github.com/hashicorp/go-version v1.2.1/go.mod h1:fltr4n8CU8Ke44wwGCBoEymUuxUHl09ZGVZPK5anwXA=
 github.com/hashicorp/go-version v1.8.0 h1:KAkNb1HAiZd1ukkxDFGmokVZe1Xy9HG6NUp+bPle2i4=
 github.com/hashicorp/go-version v1.8.0/go.mod h1:fltr4n8CU8Ke44wwGCBoEymUuxUHl09ZGVZPK5anwXA=
+github.com/hashicorp/go-version v1.9.0 h1:CeOIz6k+LoN3qX9Z0tyQrPtiB1DFYRPfCIBtaXPSCnA=
+github.com/hashicorp/go-version v1.9.0/go.mod h1:fltr4n8CU8Ke44wwGCBoEymUuxUHl09ZGVZPK5anwXA=
 github.com/hashicorp/golang-lru v0.5.0/go.mod h1:/m3WP610KZHVQ1SGc6re/UDhFvYD7pJ4Ao+sR/qLZy8=
 github.com/hashicorp/golang-lru v0.5.1/go.mod h1:/m3WP610KZHVQ1SGc6re/UDhFvYD7pJ4Ao+sR/qLZy8=
 github.com/hashicorp/golang-lru/v2 v2.0.7 h1:a+bsQ5rvGLjzHuww6tVxozPZFVghXaHOwFs4luLUK2k=
@@ -373,8 +452,12 @@ github.com/hexops/gotextdiff v1.0.3/go.mod h1:pSWU5MAI3yDq+fZBTazCSJysOMbxWL1BSo
 github.com/ianlancetaylor/demangle v0.0.0-20181102032728-5e5cf60278f6/go.mod h1:aSSvb/t6k1mPoxDqO4vJh6VOCGPwU4O0C2/Eqndh1Sc=
 github.com/inconshreveable/mousetrap v1.1.0 h1:wN+x4NVGpMsO7ErUn/mUI3vEoE6Jt13X2s0bqwp9tc8=
 github.com/inconshreveable/mousetrap v1.1.0/go.mod h1:vpF70FUmC8bwa3OWnCshd2FqLfsEA9PFc4w1p2J65bw=
+github.com/invopop/jsonschema v0.14.0 h1:MHQqLhvpNUZfw+hM3AZDYK7jxO8FZoQeQM77g8iyZjg=
+github.com/invopop/jsonschema v0.14.0/go.mod h1:ygm6C2EaVNMBDPpaPlnOA2pFAxBnxGjFlMZABxm9n2I=
 github.com/jgautheron/goconst v1.8.2 h1:y0XF7X8CikZ93fSNT6WBTb/NElBu9IjaY7CCYQrCMX4=
 github.com/jgautheron/goconst v1.8.2/go.mod h1:A0oxgBCHy55NQn6sYpO7UdnA9p+h7cPtoOZUmvNIako=
+github.com/jgautheron/goconst v1.10.0 h1:Ptt+OoE4NaEWKhLrWrrN3IpZdGLiqaf7WLnEX/iv4Jw=
+github.com/jgautheron/goconst v1.10.0/go.mod h1:0p+wv1lFOiUr0IlNNT1nrm6+8DB8u2sU6KHGzFRXHDc=
 github.com/jingyugao/rowserrcheck v1.1.1 h1:zibz55j/MJtLsjP1OF4bSdgXxwL1b+Vn7Tjzq7gFzUs=
 github.com/jingyugao/rowserrcheck v1.1.1/go.mod h1:4yvlZSDb3IyDTUZJUmpZfm2Hwok+Dtp+nu2qOq+er9c=
 github.com/jjti/go-spancheck v0.6.5 h1:lmi7pKxa37oKYIMScialXUK6hP3iY5F1gu+mLBPgYB8=
@@ -394,6 +477,8 @@ github.com/karamaru-alpha/copyloopvar v1.2.2 h1:yfNQvP9YaGQR7VaWLYcfZUlRP2eo2vhE
 github.com/karamaru-alpha/copyloopvar v1.2.2/go.mod h1:oY4rGZqZ879JkJMtX3RRkcXRkmUvH0x35ykgaKgsgJY=
 github.com/kisielk/errcheck v1.9.0 h1:9xt1zI9EBfcYBvdU1nVrzMzzUPUtPKs9bVSIM3TAb3M=
 github.com/kisielk/errcheck v1.9.0/go.mod h1:kQxWMMVZgIkDq7U8xtG/n2juOjbLgZtedi0D+/VL/i8=
+github.com/kisielk/errcheck v1.10.0 h1:Lvs/YAHP24YKg08LA8oDw2z9fJVme090RAXd90S+rrw=
+github.com/kisielk/errcheck v1.10.0/go.mod h1:kQxWMMVZgIkDq7U8xtG/n2juOjbLgZtedi0D+/VL/i8=
 github.com/kisielk/gotool v1.0.0/go.mod h1:XhKaO+MFFWcvkIS/tQcRk01m1F5IRFswLeQ+oQHNcck=
 github.com/kkHAIKE/contextcheck v1.1.6 h1:7HIyRcnyzxL9Lz06NGhiKvenXq7Zw6Q0UQu/ttjfJCE=
 github.com/kkHAIKE/contextcheck v1.1.6/go.mod h1:3dDbMRNBFaq8HFXWC1JyvDSPm43CmE6IuHam8Wr0rkg=
@@ -429,6 +514,8 @@ github.com/leonklingele/grouper v1.1.2 h1:o1ARBDLOmmasUaNDesWqWCIFH3u7hoFlM84Yrj
 github.com/leonklingele/grouper v1.1.2/go.mod h1:6D0M/HVkhs2yRKRFZUoGjeDy7EZTfFBE9gl4kjmIGkA=
 github.com/lucasb-eyer/go-colorful v1.2.0 h1:1nnpGOrhyZZuNyfu1QjKiUICQ74+3FNCN69Aj6K7nkY=
 github.com/lucasb-eyer/go-colorful v1.2.0/go.mod h1:R4dSotOR9KMtayYi1e77YzuveK+i7ruzyGqttikkLy0=
+github.com/lucasb-eyer/go-colorful v1.4.0 h1:UtrWVfLdarDgc44HcS7pYloGHJUjHV/4FwW4TvVgFr4=
+github.com/lucasb-eyer/go-colorful v1.4.0/go.mod h1:R4dSotOR9KMtayYi1e77YzuveK+i7ruzyGqttikkLy0=
 github.com/macabu/inamedparam v0.2.0 h1:VyPYpOc10nkhI2qeNUdh3Zket4fcZjEWe35poddBCpE=
 github.com/macabu/inamedparam v0.2.0/go.mod h1:+Pee9/YfGe5LJ62pYXqB89lJ+0k5bsR8Wgz/C0Zlq3U=
 github.com/magiconair/properties v1.8.6 h1:5ibWZ6iY0NctNGWo87LalDlEZ6R41TqbbDamhfG/Qzo=
@@ -437,6 +524,8 @@ github.com/manuelarte/embeddedstructfieldcheck v0.4.0 h1:3mAIyaGRtjK6EO9E73JlXLt
 github.com/manuelarte/embeddedstructfieldcheck v0.4.0/go.mod h1:z8dFSyXqp+fC6NLDSljRJeNQJJDWnY7RoWFzV3PC6UM=
 github.com/manuelarte/funcorder v0.5.0 h1:llMuHXXbg7tD0i/LNw8vGnkDTHFpTnWqKPI85Rknc+8=
 github.com/manuelarte/funcorder v0.5.0/go.mod h1:Yt3CiUQthSBMBxjShjdXMexmzpP8YGvGLjrxJNkO2hA=
+github.com/manuelarte/funcorder v0.6.0 h1:0hBngc4fa1IgNiI65A7sFGkMvoMCc878RjqB5V7rWP0=
+github.com/manuelarte/funcorder v0.6.0/go.mod h1:id3NDhXdQBmeqXH7eVC6Z89xS6JxvZ8kF9xUxpArU/g=
 github.com/maratori/testableexamples v1.0.1 h1:HfOQXs+XgfeRBJ+Wz0XfH+FHnoY9TVqL6Fcevpzy4q8=
 github.com/maratori/testableexamples v1.0.1/go.mod h1:XE2F/nQs7B9N08JgyRmdGjYVGqxWwClLPCGSQhXQSrQ=
 github.com/maratori/testpackage v1.1.2 h1:ffDSh+AgqluCLMXhM19f/cpvQAKygKAJXFl9aUjmbqs=
@@ -451,10 +540,14 @@ github.com/mattn/go-isatty v0.0.20 h1:xfD0iDuEKnDkl03q4limB+vH+GxLEtL/jb4xVJSWWE
 github.com/mattn/go-isatty v0.0.20/go.mod h1:W+V8PltTTMOvKvAeJH7IuucS94S2C6jfK/D7dTCTo3Y=
 github.com/mattn/go-runewidth v0.0.16 h1:E5ScNMtiwvlvB5paMFdw9p4kSQzbXFikJ5SQO6TULQc=
 github.com/mattn/go-runewidth v0.0.16/go.mod h1:Jdepj2loyihRzMpdS35Xk/zdY8IAYHsh153qUoGf23w=
+github.com/mattn/go-runewidth v0.0.23 h1:7ykA0T0jkPpzSvMS5i9uoNn2Xy3R383f9HDx3RybWcw=
+github.com/mattn/go-runewidth v0.0.23/go.mod h1:XBkDxAl56ILZc9knddidhrOlY5R/pDhgLpndooCuJAs=
 github.com/matttproud/golang_protobuf_extensions v1.0.1 h1:4hp9jkHxhMHkqkrB3Ix0jegS5sx/RkqARlsWZ6pIwiU=
 github.com/matttproud/golang_protobuf_extensions v1.0.1/go.mod h1:D8He9yQNgCq6Z5Ld7szi9bcBfOoFv/3dc6xSMkL2PC0=
 github.com/mgechev/revive v1.13.0 h1:yFbEVliCVKRXY8UgwEO7EOYNopvjb1BFbmYqm9hZjBM=
 github.com/mgechev/revive v1.13.0/go.mod h1:efJfeBVCX2JUumNQ7dtOLDja+QKj9mYGgEZA7rt5u+0=
+github.com/mgechev/revive v1.15.0 h1:vJ0HzSBzfNyPbHKolgiFjHxLek9KUijhqh42yGoqZ8Q=
+github.com/mgechev/revive v1.15.0/go.mod h1:LlAKO3QQe9OJ0pVZzI2GPa8CbXGZ/9lNpCGvK4T/a8A=
 github.com/mitchellh/go-homedir v1.1.0 h1:lukF9ziXFxDFPkA1vsr5zpc1XuPDn/wFntq5mG+4E0Y=
 github.com/mitchellh/go-homedir v1.1.0/go.mod h1:SfyaCUpYCn1Vlf4IUYiD9fPX4A5wJrkLzIz1N1q0pr0=
 github.com/mitchellh/mapstructure v1.5.0 h1:jeMsZIYE/09sWLaz43PL7Gy6RuMjD2eJVyuac5Z2hdY=
@@ -466,6 +559,8 @@ github.com/modern-go/reflect2 v1.0.1/go.mod h1:bx2lNnkwVCuqBIxFjflWJWanXIb3Rllmb
 github.com/modern-go/reflect2 v1.0.2/go.mod h1:yWuevngMOJpCy52FWWMvUC8ws7m/LJsjYzDa0/r8luk=
 github.com/moricho/tparallel v0.3.2 h1:odr8aZVFA3NZrNybggMkYO3rgPRcqjeQUlBBFVxKHTI=
 github.com/moricho/tparallel v0.3.2/go.mod h1:OQ+K3b4Ln3l2TZveGCywybl68glfLEwFGqvnjok8b+U=
+github.com/muesli/cancelreader v0.2.2 h1:3I4Kt4BQjOR54NavqnDogx/MIoWBFa0StPA8ELUXHmA=
+github.com/muesli/cancelreader v0.2.2/go.mod h1:3XuTXfFS2VjM+HTLZY9Ak0l6eUKfijIfMUZ4EgX0QYo=
 github.com/muesli/termenv v0.16.0 h1:S5AlUN9dENB57rsbnkPyfdGuWIlkmzJjbFf0Tf5FWUc=
 github.com/muesli/termenv v0.16.0/go.mod h1:ZRfOIKPFDYQoDFF4Olj7/QJbW60Ol/kL1pU3VfY/Cnk=
 github.com/mwitkow/go-conntrack v0.0.0-20161129095857-cc309e4a2223/go.mod h1:qRWi+5nqEBWmkhHvq77mSJWrCKwh8bxhgT7d/eI7P4U=
@@ -478,12 +573,18 @@ github.com/nishanths/predeclared v0.2.2 h1:V2EPdZPliZymNAn79T8RkNApBjMmVKh5XRpLm
 github.com/nishanths/predeclared v0.2.2/go.mod h1:RROzoN6TnGQupbC+lqggsOlcgysk3LMK/HI84Mp280c=
 github.com/nunnatsa/ginkgolinter v0.21.2 h1:khzWfm2/Br8ZemX8QM1pl72LwM+rMeW6VUbQ4rzh0Po=
 github.com/nunnatsa/ginkgolinter v0.21.2/go.mod h1:GItSI5fw7mCGLPmkvGYrr1kEetZe7B593jcyOpyabsY=
+github.com/nunnatsa/ginkgolinter v0.23.0 h1:x3o4DGYOWbBMP/VdNQKgSj+25aJKx2Pe6lHr8gBcgf8=
+github.com/nunnatsa/ginkgolinter v0.23.0/go.mod h1:9qN1+0akwXEccwV1CAcCDfcoBlWXHB+ML9884pL4SZ4=
 github.com/onsi/ginkgo/v2 v2.27.2 h1:LzwLj0b89qtIy6SSASkzlNvX6WktqurSHwkk2ipF/Ns=
 github.com/onsi/ginkgo/v2 v2.27.2/go.mod h1:ArE1D/XhNXBXCBkKOLkbsb2c81dQHCRcF5zwn/ykDRo=
+github.com/onsi/ginkgo/v2 v2.32.0 h1:Hw7s2pVrQo/8Yz5N77qdnpHaoc+c6cC9WIV1Jce+J6E=
 github.com/onsi/gomega v1.38.2 h1:eZCjf2xjZAqe+LeWvKb5weQ+NcPwX84kqJ0cZNxok2A=
 github.com/onsi/gomega v1.38.2/go.mod h1:W2MJcYxRGV63b418Ai34Ud0hEdTVXq9NW9+Sx6uXf3k=
+github.com/onsi/gomega v1.42.1 h1:iN1rCUX+44NZ1Dc97MPoeFYbFR0vh8zxoxMFwKdyZ6I=
 github.com/openai/openai-go/v3 v3.8.1 h1:b+YWsmwqXnbpSHWQEntZAkKciBZ5CJXwL68j+l59UDg=
 github.com/openai/openai-go/v3 v3.8.1/go.mod h1:UOpNxkqC9OdNXNUfpNByKOtB4jAL0EssQXq5p8gO0Xs=
+github.com/openai/openai-go/v3 v3.42.0 h1:16Skv1hpEhSm3imZpPGSeEBDUgVJJA9cHryKGGsVYI8=
+github.com/openai/openai-go/v3 v3.42.0/go.mod h1:cdufnVK14cWcT9qA1rRtrXx4FTRsgbDPW7Ia7SS5cZo=
 github.com/otiai10/copy v1.2.0/go.mod h1:rrF5dJ5F0t/EWSYODDu4j9/vEeYHMkc8jt0zJChqQWw=
 github.com/otiai10/copy v1.14.0 h1:dCI/t1iTdYGtkvCuBG2BgR6KZa83PTclw4U5n2wAllU=
 github.com/otiai10/copy v1.14.0/go.mod h1:ECfuL02W+/FkTWZWgQqXPWZgW9oeKCSQ5qVfSc4qc4w=
@@ -491,15 +592,21 @@ github.com/otiai10/curr v0.0.0-20150429015615-9b4961190c95/go.mod h1:9qAhocn7zKJ
 github.com/otiai10/curr v1.0.0/go.mod h1:LskTG5wDwr8Rs+nNQ+1LlxRjAtTZZjtJW4rMXl6j4vs=
 github.com/otiai10/mint v1.3.0/go.mod h1:F5AjcsTsWUqX+Na9fpHb52P8pcRX2CI6A3ctIT91xUo=
 github.com/otiai10/mint v1.3.1/go.mod h1:/yxELlJQ0ufhjUwhshSj+wFjZ78CnZ48/1wtmBH1OTc=
+github.com/pb33f/ordered-map/v2 v2.3.1 h1:5319HDO0aw4DA4gzi+zv4FXU9UlSs3xGZ40wcP1nBjY=
+github.com/pb33f/ordered-map/v2 v2.3.1/go.mod h1:qxFQgd0PkVUtOMCkTapqotNgzRhMPL7VvaHKbd1HnmQ=
 github.com/pelletier/go-toml v1.9.5 h1:4yBQzkHv+7BHq2PQUZF3Mx0IYxG7LsP222s7Agd3ve8=
 github.com/pelletier/go-toml v1.9.5/go.mod h1:u1nR/EPcESfeI/szUZKdtJ0xRNbUoANCkoOuaOx1Y+c=
 github.com/pelletier/go-toml/v2 v2.2.4 h1:mye9XuhQ6gvn5h28+VilKrrPoQVanw5PMw/TB0t5Ec4=
 github.com/pelletier/go-toml/v2 v2.2.4/go.mod h1:2gIqNv+qfxSVS7cM2xJQKtLSTLUE9V8t9Stt+h56mCY=
+github.com/pelletier/go-toml/v2 v2.3.1 h1:MYEvvGnQjeNkRF1qUuGolNtNExTDwct51yp7olPtrEc=
+github.com/pelletier/go-toml/v2 v2.3.1/go.mod h1:2gIqNv+qfxSVS7cM2xJQKtLSTLUE9V8t9Stt+h56mCY=
 github.com/pkg/errors v0.8.0/go.mod h1:bwawxfHBFNV+L2hUp1rHADufV3IMtnDRdf1r5NINEl0=
 github.com/pkg/errors v0.8.1/go.mod h1:bwawxfHBFNV+L2hUp1rHADufV3IMtnDRdf1r5NINEl0=
 github.com/pkg/errors v0.9.1/go.mod h1:bwawxfHBFNV+L2hUp1rHADufV3IMtnDRdf1r5NINEl0=
 github.com/pmezard/go-difflib v1.0.0 h1:4DBwDE0NGyQoBHbLQYPwSUPoCMWR5BEzIk/f1lZbAQM=
 github.com/pmezard/go-difflib v1.0.0/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4=
+github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2 h1:Jamvg5psRIccs7FGNTlIRMkT8wgtp5eCXdBlqhYGL6U=
+github.com/pmezard/go-difflib v1.0.1-0.20181226105442-5d4384ee4fb2/go.mod h1:iKH77koFhYxTK1pcRnkKkqfTogsbg7gZNVY4sRDYZ/4=
 github.com/prashantv/gostub v1.1.0 h1:BTyx3RfQjRHnUWaGF9oQos79AlQ5k8WNktv7VGvVH4g=
 github.com/prashantv/gostub v1.1.0/go.mod h1:A5zLQHz7ieHGG7is6LLXLz7I8+3LZzsrV0P1IAHhP5U=
 github.com/prometheus/client_golang v0.9.1/go.mod h1:7SWBe2y4D6OKWSNQJUaRYU/AaXPKyh/dDVn+NZz0KFw=
@@ -545,8 +652,12 @@ github.com/rogpeppe/go-internal v1.14.1/go.mod h1:MaRKkUm5W0goXpeCfT7UZI6fk/L7L7
 github.com/russross/blackfriday/v2 v2.1.0/go.mod h1:+Rmxgy9KzJVeS9/2gXHxylqXiyQDYRxCVz55jmeOWTM=
 github.com/ryancurrah/gomodguard v1.4.1 h1:eWC8eUMNZ/wM/PWuZBv7JxxqT5fiIKSIyTvjb7Elr+g=
 github.com/ryancurrah/gomodguard v1.4.1/go.mod h1:qnMJwV1hX9m+YJseXEBhd2s90+1Xn6x9dLz11ualI1I=
+github.com/ryancurrah/gomodguard/v2 v2.1.3 h1:E7sz3PJwE9Ba1reVxSpF6XLCPJZ74Kfw/LabTNM4GIA=
+github.com/ryancurrah/gomodguard/v2 v2.1.3/go.mod h1:CQicdLGatWMxLX53JzoBjYlsNZhHbmLv2AVa0s2aivU=
 github.com/ryanrolds/sqlclosecheck v0.5.1 h1:dibWW826u0P8jNLsLN+En7+RqWWTYrjCB9fJfSfdyCU=
 github.com/ryanrolds/sqlclosecheck v0.5.1/go.mod h1:2g3dUjoS6AL4huFdv6wn55WpLIDjY7ZgUR4J8HOO/XQ=
+github.com/ryanrolds/sqlclosecheck v0.6.0 h1:pEyL9okISdg1F1SEpJNlrEotkTGerv5BMk7U4AG0eVg=
+github.com/ryanrolds/sqlclosecheck v0.6.0/go.mod h1:xyX16hsDaCMXHrMJ3JMzGf5OpDfHTOTTQrT7HOFUmeU=
 github.com/sanposhiho/wastedassign/v2 v2.1.0 h1:crurBF7fJKIORrV85u9UUpePDYGWnwvv3+A96WvwXT0=
 github.com/sanposhiho/wastedassign/v2 v2.1.0/go.mod h1:+oSmSC+9bQ+VUAxA66nBb0Z7N8CK7mscKTDYC6aIek4=
 github.com/santhosh-tekuri/jsonschema/v6 v6.0.2 h1:KRzFb2m7YtdldCEkzs6KqmJw4nqEVZGK7IN2kJkjTuQ=
@@ -557,6 +668,8 @@ github.com/sashamelentyev/usestdlibvars v1.29.0 h1:8J0MoRrw4/NAXtjQqTHrbW9NN+3iM
 github.com/sashamelentyev/usestdlibvars v1.29.0/go.mod h1:8PpnjHMk5VdeWlVb4wCdrB8PNbLqZ3wBZTZWkrpZZL8=
 github.com/securego/gosec/v2 v2.22.11 h1:tW+weM/hCM/GX3iaCV91d5I6hqaRT2TPsFM1+USPXwg=
 github.com/securego/gosec/v2 v2.22.11/go.mod h1:KE4MW/eH0GLWztkbt4/7XpyH0zJBBnu7sYB4l6Wn7Mw=
+github.com/securego/gosec/v2 v2.28.0 h1:ZsSdiDb0AtTpLFVol5z91gbMei9ZiLEPG/pZjZujp7c=
+github.com/securego/gosec/v2 v2.28.0/go.mod h1:lb4/9AHe+lJy/kjWmWRWWsEipvbwGKuxf+tY1Pmjdnk=
 github.com/sergi/go-diff v1.2.0 h1:XU+rvMAioB0UC3q1MFrIQy4Vo5/4VsRDQQXHsEya6xQ=
 github.com/sergi/go-diff v1.2.0/go.mod h1:STckp+ISIX8hZLjrqAeVduY0gWCT9IjLuqbuNXdaHfM=
 github.com/shurcooL/go v0.0.0-20180423040247-9e1955d9fb6e/go.mod h1:TDJrrUr11Vxrven61rcy3hJMUqaf/CLWYhHNPmT14Lk=
@@ -566,12 +679,18 @@ github.com/sirupsen/logrus v1.4.2/go.mod h1:tLMulIdttU9McNUspp0xgXVQah82FyeX6Mwd
 github.com/sirupsen/logrus v1.6.0/go.mod h1:7uNnSEd1DgxDLC74fIahvMZmmYsHGZGEOFrfsX/uA88=
 github.com/sirupsen/logrus v1.9.3 h1:dueUQJ1C2q9oE3F7wvmSGAaVtTmUizReu6fjN8uqzbQ=
 github.com/sirupsen/logrus v1.9.3/go.mod h1:naHLuLoDiP4jHNo9R0sCBMtWGeIprob74mVsIT4qYEQ=
+github.com/sirupsen/logrus v1.9.4 h1:TsZE7l11zFCLZnZ+teH4Umoq5BhEIfIzfRDZ1Uzql2w=
+github.com/sirupsen/logrus v1.9.4/go.mod h1:ftWc9WdOfJ0a92nsE2jF5u5ZwH8Bv2zdeOC42RjbV2g=
 github.com/sivchari/containedctx v1.0.3 h1:x+etemjbsh2fB5ewm5FeLNi5bUjK0V8n0RB+Wwfd0XE=
 github.com/sivchari/containedctx v1.0.3/go.mod h1:c1RDvCbnJLtH4lLcYD/GqwiBSSf4F5Qk0xld2rBqzJ4=
 github.com/sonatard/noctx v0.4.0 h1:7MC/5Gg4SQ4lhLYR6mvOP6mQVSxCrdyiExo7atBs27o=
 github.com/sonatard/noctx v0.4.0/go.mod h1:64XdbzFb18XL4LporKXp8poqZtPKbCrqQ402CV+kJas=
+github.com/sonatard/noctx v0.5.1 h1:wklWg9c9ZYugOAk7qG4yP4PBrlQsmSLPTvW1K4PRQMs=
+github.com/sonatard/noctx v0.5.1/go.mod h1:64XdbzFb18XL4LporKXp8poqZtPKbCrqQ402CV+kJas=
 github.com/sourcegraph/go-diff v0.7.0 h1:9uLlrd5T46OXs5qpp8L/MTltk0zikUGi0sNNyCpA8G0=
 github.com/sourcegraph/go-diff v0.7.0/go.mod h1:iBszgVvyxdc8SFZ7gm69go2KDdt3ag071iBaWPF6cjs=
+github.com/sourcegraph/go-diff v0.8.0 h1:ipIyu4cTsLbIrln4l0qtHA3r0a7gyK4ntKjtQytHhvY=
+github.com/sourcegraph/go-diff v0.8.0/go.mod h1:hWlcO7Al+UZStZAP8rBumHpCK5ZHQ5BXsMls8p4+F5E=
 github.com/spf13/afero v1.15.0 h1:b/YBCLWAJdFWJTN9cLhiXXcD7mzKn9Dm86dNnfyQw1I=
 github.com/spf13/afero v1.15.0/go.mod h1:NC2ByUVxtQs4b3sIUphxK0NioZnmxgyCrfzeuq8lxMg=
 github.com/spf13/cast v1.5.0 h1:rj3WzYc11XZaIZMPKmwP96zkFEnnAmV8s6XbB2aY32w=
@@ -588,12 +707,16 @@ github.com/spf13/viper v1.12.0 h1:CZ7eSOd3kZoaYDLbXnmzgQI5RlciuXBMA+18HwHRfZQ=
 github.com/spf13/viper v1.12.0/go.mod h1:b6COn30jlNxbm/V2IqWiNWkJ+vZNiMNksliPCiuKtSI=
 github.com/ssgreg/nlreturn/v2 v2.2.1 h1:X4XDI7jstt3ySqGU86YGAURbxw3oTDPK9sPEi6YEwQ0=
 github.com/ssgreg/nlreturn/v2 v2.2.1/go.mod h1:E/iiPB78hV7Szg2YfRgyIrk1AD6JVMTRkkxBiELzh2I=
+github.com/standard-webhooks/standard-webhooks/libraries v0.0.1 h1:uOfcYT+3QungH6tIGSVCR/Y3KJmgJiHcojJbMTPDZAI=
+github.com/standard-webhooks/standard-webhooks/libraries v0.0.1/go.mod h1:L1MQhA6x4dn9r007T033lsaZMv9EmBAdXyU/+EF40fo=
 github.com/stbenjam/no-sprintf-host-port v0.3.1 h1:AyX7+dxI4IdLBPtDbsGAyqiTSLpCP9hWRrXQDU4Cm/g=
 github.com/stbenjam/no-sprintf-host-port v0.3.1/go.mod h1:ODbZesTCHMVKthBHskvUUexdcNHAQRXk9NpSsL8p/HQ=
 github.com/stretchr/objx v0.1.0/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME=
 github.com/stretchr/objx v0.1.1/go.mod h1:HFkY916IF+rwdDfMAkV7OtwuqBVzrE8GR6GFx+wExME=
 github.com/stretchr/objx v0.5.2 h1:xuMeJ0Sdp5ZMRXx/aWO6RZxdr3beISkG5/G/aIRr3pY=
 github.com/stretchr/objx v0.5.2/go.mod h1:FRsXN1f5AsAjCGJKqEizvkpNtU+EGNCLh3NxZ/8L+MA=
+github.com/stretchr/objx v0.5.3 h1:jmXUvGomnU1o3W/V5h2VEradbpJDwGrzugQQvL0POH4=
+github.com/stretchr/objx v0.5.3/go.mod h1:rDQraq+vQZU7Fde9LOZLr8Tax6zZvy4kuNKF+QYS+U0=
 github.com/stretchr/testify v1.2.2/go.mod h1:a8OnRcib4nhh0OaRAV+Yts87kKdq0PP7pXfy6kDkUVs=
 github.com/stretchr/testify v1.3.0/go.mod h1:M5WIy9Dh21IEIfnGCwXGc5bZfKNJtfHm1UVUgZn+9EI=
 github.com/stretchr/testify v1.4.0/go.mod h1:j7eGeouHqKxXV5pUuKE4zz7dFj8WfuZ+81PSLYec5m4=
@@ -608,11 +731,17 @@ github.com/tenntenn/text/transform v0.0.0-20200319021203-7eef512accb3 h1:f+jULpR
 github.com/tenntenn/text/transform v0.0.0-20200319021203-7eef512accb3/go.mod h1:ON8b8w4BN/kE1EOhwT0o+d62W65a6aPw1nouo9LMgyY=
 github.com/tetafro/godot v1.5.4 h1:u1ww+gqpRLiIA16yF2PV1CV1n/X3zhyezbNXC3E14Sg=
 github.com/tetafro/godot v1.5.4/go.mod h1:eOkMrVQurDui411nBY2FA05EYH01r14LuWY/NrVDVcU=
+github.com/tetafro/godot v1.5.6 h1:IEkrFCwXaYHlOn4mGzGS3F3dkP6m9t0jpwqBFPIkKiA=
+github.com/tetafro/godot v1.5.6/go.mod h1:eOkMrVQurDui411nBY2FA05EYH01r14LuWY/NrVDVcU=
 github.com/tidwall/gjson v1.14.2/go.mod h1:/wbyibRr2FHMks5tjHJ5F8dMZh3AcwJEMf5vlfC0lxk=
 github.com/tidwall/gjson v1.18.0 h1:FIDeeyB800efLX89e5a8Y0BNH+LOngJyGrIWxG2FKQY=
 github.com/tidwall/gjson v1.18.0/go.mod h1:/wbyibRr2FHMks5tjHJ5F8dMZh3AcwJEMf5vlfC0lxk=
+github.com/tidwall/gjson v1.19.0 h1:xwxm7n691Uf3u5OFjzngavjGTh55KX5q/9w9xHW88JU=
+github.com/tidwall/gjson v1.19.0/go.mod h1:V37/opeE/JbLUOfH0QTXiNez2l0RUjYUhpT4szFQAfc=
 github.com/tidwall/match v1.1.1 h1:+Ho715JplO36QYgwN9PGYNhgZvoUSc9X2c80KVTi+GA=
 github.com/tidwall/match v1.1.1/go.mod h1:eRSPERbgtNPcGhD8UCthc6PmLEQXEWd3PRB5JTxsfmM=
+github.com/tidwall/match v1.2.0 h1:0pt8FlkOwjN2fPt4bIl4BoNxb98gGHN2ObFEDkrfZnM=
+github.com/tidwall/match v1.2.0/go.mod h1:eRSPERbgtNPcGhD8UCthc6PmLEQXEWd3PRB5JTxsfmM=
 github.com/tidwall/pretty v1.2.0/go.mod h1:ITEVvHYasfjBbM0u2Pg8T2nJnzm8xPwvNhhsoaGGjNU=
 github.com/tidwall/pretty v1.2.1 h1:qjsOFOWWQl+N3RsoF5/ssm1pHmJJwhjlSbZ51I6wMl4=
 github.com/tidwall/pretty v1.2.1/go.mod h1:ITEVvHYasfjBbM0u2Pg8T2nJnzm8xPwvNhhsoaGGjNU=
@@ -620,6 +749,8 @@ github.com/tidwall/sjson v1.2.5 h1:kLy8mja+1c9jlljvWTlSazM7cKDRfJuR/bOJhcY5NcY=
 github.com/tidwall/sjson v1.2.5/go.mod h1:Fvgq9kS/6ociJEDnK0Fk1cpYF4FIW6ZF7LAe+6jwd28=
 github.com/timakin/bodyclose v0.0.0-20241222091800-1db5c5ca4d67 h1:9LPGD+jzxMlnk5r6+hJnar67cgpDIz/iyD+rfl5r2Vk=
 github.com/timakin/bodyclose v0.0.0-20241222091800-1db5c5ca4d67/go.mod h1:mkjARE7Yr8qU23YcGMSALbIxTQ9r9QBVahQOBRfU460=
+github.com/timakin/bodyclose v0.0.0-20260129054331-73d1f95b84b4 h1:SiHe5XLTn9sFWJ5pBwJ5FN/4j34q9ZlOAD//kMoMYp0=
+github.com/timakin/bodyclose v0.0.0-20260129054331-73d1f95b84b4/go.mod h1:sDHLK7rb/59v/ZxZ7KtymgcoxuUMxjXq8gtu9VMOK8M=
 github.com/timonwong/loggercheck v0.11.0 h1:jdaMpYBl+Uq9mWPXv1r8jc5fC3gyXx4/WGwTnnNKn4M=
 github.com/timonwong/loggercheck v0.11.0/go.mod h1:HEAWU8djynujaAVX7QI65Myb8qgfcZ1uKbdpg3ZzKl8=
 github.com/tomarrell/wrapcheck/v2 v2.12.0 h1:H/qQ1aNWz/eeIhxKAFvkfIA+N7YDvq6TWVFL27Of9is=
@@ -632,8 +763,12 @@ github.com/ultraware/whitespace v0.2.0 h1:TYowo2m9Nfj1baEQBjuHzvMRbp19i+RCcRYrSW
 github.com/ultraware/whitespace v0.2.0/go.mod h1:XcP1RLD81eV4BW8UhQlpaR+SDc2givTvyI8a586WjW8=
 github.com/uudashr/gocognit v1.2.0 h1:3BU9aMr1xbhPlvJLSydKwdLN3tEUUrzPSSM8S4hDYRA=
 github.com/uudashr/gocognit v1.2.0/go.mod h1:k/DdKPI6XBZO1q7HgoV2juESI2/Ofj9AcHPZhBBdrTU=
+github.com/uudashr/gocognit v1.2.1 h1:CSJynt5txTnORn/DkhiB4mZjwPuifyASC8/6Q0I/QS4=
+github.com/uudashr/gocognit v1.2.1/go.mod h1:acaubQc6xYlXFEMb9nWX2dYBzJ/bIjEkc1zzvyIZg5Q=
 github.com/uudashr/iface v1.4.1 h1:J16Xl1wyNX9ofhpHmQ9h9gk5rnv2A6lX/2+APLTo0zU=
 github.com/uudashr/iface v1.4.1/go.mod h1:pbeBPlbuU2qkNDn0mmfrxP2X+wjPMIQAy+r1MBXSXtg=
+github.com/uudashr/iface v1.4.2 h1:06Vq5RKVYThBsj0Bnw4oasMjD1r+7CE/bcKOA8dVSvg=
+github.com/uudashr/iface v1.4.2/go.mod h1:pbeBPlbuU2qkNDn0mmfrxP2X+wjPMIQAy+r1MBXSXtg=
 github.com/xen0n/gosmopolitan v1.3.0 h1:zAZI1zefvo7gcpbCOrPSHJZJYA9ZgLfJqtKzZ5pHqQM=
 github.com/xen0n/gosmopolitan v1.3.0/go.mod h1:rckfr5T6o4lBtM1ga7mLGKZmLxswUoH1zxHgNXOsEt4=
 github.com/xo/terminfo v0.0.0-20220910002029-abceb7e1c41e h1:JVG44RsyaB9T2KIHavMF/ppJZNG9ZpyihvCd0w101no=
@@ -659,8 +794,12 @@ go-simpler.org/musttag v0.14.0 h1:XGySZATqQYSEV3/YTy+iX+aofbZZllJaqwFWs+RTtSo=
 go-simpler.org/musttag v0.14.0/go.mod h1:uP8EymctQjJ4Z1kUnjX0u2l60WfUdQxCwSNKzE1JEOE=
 go-simpler.org/sloglint v0.11.1 h1:xRbPepLT/MHPTCA6TS/wNfZrDzkGvCCqUv4Bdwc3H7s=
 go-simpler.org/sloglint v0.11.1/go.mod h1:2PowwiCOK8mjiF+0KGifVOT8ZsCNiFzvfyJeJOIt8MQ=
+go-simpler.org/sloglint v0.12.0 h1:UzWDlLWNE5FLqsvyq3tWYHuQMbqrervOhT8qPl4Mmw4=
+go-simpler.org/sloglint v0.12.0/go.mod h1:jBjjC2bm8rYrs88oTRlFX497kWjJsyZWYoNaXkGRI6I=
 go.augendre.info/arangolint v0.3.1 h1:n2E6p8f+zfXSFLa2e2WqFPp4bfvcuRdd50y6cT65pSo=
 go.augendre.info/arangolint v0.3.1/go.mod h1:6ZKzEzIZuBQwoSvlKT+qpUfIbBfFCE5gbAoTg0/117g=
+go.augendre.info/arangolint v0.4.0 h1:xSCZjRoS93nXazBSg5d0OGCi9APPLNMmmLrC995tR50=
+go.augendre.info/arangolint v0.4.0/go.mod h1:l+f/b4plABuFISuKnTGD4RioXiCCgghv2xqst/xOvAA=
 go.augendre.info/fatcontext v0.9.0 h1:Gt5jGD4Zcj8CDMVzjOJITlSb9cEch54hjRRlN3qDojE=
 go.augendre.info/fatcontext v0.9.0/go.mod h1:L94brOAT1OOUNue6ph/2HnwxoNlds9aXDF2FcUntbNw=
 go.opencensus.io v0.21.0/go.mod h1:mSImk1erAIZhrmZN+AvHh14ztQfjbGwt4TtuofqLduU=
@@ -672,16 +811,26 @@ go.opentelemetry.io/auto/sdk v1.2.1 h1:jXsnJ4Lmnqd11kwkBV2LgLoFMZKizbCi5fNZ/ipaZ
 go.opentelemetry.io/auto/sdk v1.2.1/go.mod h1:KRTj+aOaElaLi+wW1kO/DZRXwkF4C5xPbEe3ZiIhN7Y=
 go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.61.0 h1:F7Jx+6hwnZ41NSFTO5q4LYDtJRXBf2PD0rNBkeB/lus=
 go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.61.0/go.mod h1:UHB22Z8QsdRDrnAtX4PntOl36ajSxcdUMt1sF7Y6E7Q=
+go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.69.0 h1:8tvICD4vSTOOsNrsI4Ljf6C+6UKvpTEH5XY3JMoyPoo=
+go.opentelemetry.io/contrib/instrumentation/net/http/otelhttp v0.69.0/go.mod h1:z9+yiacE0IHRqM4qFfkbt/JYlmYXgss8GY/jXoNuPJI=
 go.opentelemetry.io/otel v1.41.0 h1:YlEwVsGAlCvczDILpUXpIpPSL/VPugt7zHThEMLce1c=
 go.opentelemetry.io/otel v1.41.0/go.mod h1:Yt4UwgEKeT05QbLwbyHXEwhnjxNO6D8L5PQP51/46dE=
+go.opentelemetry.io/otel v1.44.0 h1:JjwHmHpA4iZ3wBxluu2fbbE7j4kqlE8jXyAyPXH7HqU=
+go.opentelemetry.io/otel v1.44.0/go.mod h1:BMgjTHL9WPRlRjL2oZCBTL4whCGtXch2H4BhOPIAyYc=
 go.opentelemetry.io/otel/metric v1.41.0 h1:rFnDcs4gRzBcsO9tS8LCpgR0dxg4aaxWlJxCno7JlTQ=
 go.opentelemetry.io/otel/metric v1.41.0/go.mod h1:xPvCwd9pU0VN8tPZYzDZV/BMj9CM9vs00GuBjeKhJps=
+go.opentelemetry.io/otel/metric v1.44.0 h1:1w0gILTcHdr3YI+ixLyjemwrVnsMURbTZFrSYCdDdmc=
+go.opentelemetry.io/otel/metric v1.44.0/go.mod h1:8O7hanEPBNgEMmybD3s2VBKcgWOCsA6tzHBPODAiquo=
 go.opentelemetry.io/otel/sdk v1.39.0 h1:nMLYcjVsvdui1B/4FRkwjzoRVsMK8uL/cj0OyhKzt18=
 go.opentelemetry.io/otel/sdk v1.39.0/go.mod h1:vDojkC4/jsTJsE+kh+LXYQlbL8CgrEcwmt1ENZszdJE=
+go.opentelemetry.io/otel/sdk v1.44.0 h1:nHYwb9lK+fJPU/dnT6s7W7Z8itMWyqrnVfbheVYrZ58=
 go.opentelemetry.io/otel/sdk/metric v1.39.0 h1:cXMVVFVgsIf2YL6QkRF4Urbr/aMInf+2WKg+sEJTtB8=
 go.opentelemetry.io/otel/sdk/metric v1.39.0/go.mod h1:xq9HEVH7qeX69/JnwEfp6fVq5wosJsY1mt4lLfYdVew=
+go.opentelemetry.io/otel/sdk/metric v1.44.0 h1:3LlKgI+VjbVsjNRFZJZAJ30WjXC5VkNRks6si09iEfI=
 go.opentelemetry.io/otel/trace v1.41.0 h1:Vbk2co6bhj8L59ZJ6/xFTskY+tGAbOnCtQGVVa9TIN0=
 go.opentelemetry.io/otel/trace v1.41.0/go.mod h1:U1NU4ULCoxeDKc09yCWdWe+3QoyweJcISEVa1RBzOis=
+go.opentelemetry.io/otel/trace v1.44.0 h1:jxF5CsGYCe74MCRx2X4g7WsY/VBKRqqpNvXlX/6gtIk=
+go.opentelemetry.io/otel/trace v1.44.0/go.mod h1:oLl1jrMQAVo6v3GAggN+1VH9VIz9iUSvW53sW1Q8PIE=
 go.uber.org/automaxprocs v1.6.0 h1:O3y2/QNTOdbF+e/dpXNNW7Rx2hZ4sTIPyybbxyNqTUs=
 go.uber.org/automaxprocs v1.6.0/go.mod h1:ifeIMSnPZuznNm6jmdzmU3/bfk01Fe2fotchwEFJ8r8=
 go.uber.org/goleak v1.3.0 h1:2K3zAYmnTNqV73imy9J1T3WC+gmCePx2hEGkimedGto=
@@ -692,6 +841,8 @@ go.uber.org/zap v1.27.0 h1:aJMhYGrd5QSmlpLMr2MftRKl7t8J8PTZPA732ud/XR8=
 go.uber.org/zap v1.27.0/go.mod h1:GB2qFLM7cTU87MWRP2mPIjqfIDnGu+VIO4V/SdhGo2E=
 go.yaml.in/yaml/v3 v3.0.4 h1:tfq32ie2Jv2UxXFdLJdh3jXuOzWiL1fo0bu/FbuKpbc=
 go.yaml.in/yaml/v3 v3.0.4/go.mod h1:DhzuOOF2ATzADvBadXxruRBLzYTpT36CKvDb3+aBEFg=
+go.yaml.in/yaml/v4 v4.0.0-rc.6 h1:1h7H1ohdUh93/FyE4YaDa1Zh64K6VVbjF4K6WUxMtH4=
+go.yaml.in/yaml/v4 v4.0.0-rc.6/go.mod h1:aZqd9kCMsGL7AuUv/m/PvWLdg5sjJsZ4oHDEnfPPfY0=
 golang.org/x/crypto v0.0.0-20180904163835-0709b304e793/go.mod h1:6SG95UA2DQfeDnfUPMdvaQW0Q7yPrPDi9nlGo2tz2b4=
 golang.org/x/crypto v0.0.0-20190308221718-c2843e01d9a2/go.mod h1:djNgcEr1/C05ACkg1iLfiJU5Ep61QUkGW8qpdssI0+w=
 golang.org/x/crypto v0.0.0-20190510104115-cbcb75029529/go.mod h1:yigFU9vqHzYiE8UmvKecakEJjdnWj3jj499lnFckfCI=
@@ -703,6 +854,8 @@ golang.org/x/crypto v0.13.0/go.mod h1:y6Z2r+Rw4iayiXXAIxJIDAJ1zMW4yaTpebo8fPOliY
 golang.org/x/crypto v0.14.0/go.mod h1:MVFd36DqK4CsrnJYDkBA3VC4m2GkXAM0PvzMCn4JQf4=
 golang.org/x/crypto v0.52.0 h1:RMs7fP2rXdep0CftQlK8Uf+kibLm7qkCcradZWYz988=
 golang.org/x/crypto v0.52.0/go.mod h1:1QgfPxDqh0T2M/elOJtp9RvuR95kVjir0e6/BvEmGbc=
+golang.org/x/crypto v0.55.0 h1:+KWHjbgOaAQ66dh/YlkZKHlz9ZUlq61AFirAR9ntP8M=
+golang.org/x/crypto v0.55.0/go.mod h1:uq0V9dE/fzQuJtbnL+2EhWOE63vo164FY8xqEnV9xis=
 golang.org/x/exp v0.0.0-20190121172915-509febef88a4/go.mod h1:CJ0aWSM057203Lf6IL+f9T1iT9GByDxfZKAQTCR3kQA=
 golang.org/x/exp v0.0.0-20190306152737-a1d7652674e8/go.mod h1:CJ0aWSM057203Lf6IL+f9T1iT9GByDxfZKAQTCR3kQA=
 golang.org/x/exp v0.0.0-20190510132918-efd6b22b2522/go.mod h1:ZjyILWgesfNpC6sMxTJOJm9Kp84zZh5NQWvqDGG3Qr8=
@@ -715,10 +868,13 @@ golang.org/x/exp v0.0.0-20200207192155-f17229e696bd/go.mod h1:J/WKrq2StrnmMY6+EH
 golang.org/x/exp v0.0.0-20200224162631-6cc2880d07d6/go.mod h1:3jZMyOhIsHpP37uCMkUooju7aAi5cS1Q23tOzKc+0MU=
 golang.org/x/exp v0.0.0-20240909161429-701f63a606c0 h1:e66Fs6Z+fZTbFBAxKfP3PALWBtpfqks2bwGcexMxgtk=
 golang.org/x/exp v0.0.0-20240909161429-701f63a606c0/go.mod h1:2TbTHSBQa924w8M6Xs1QcRcFwyucIwBGpK1p2f1YFFY=
+golang.org/x/exp v0.0.0-20250620022241-b7579e27df2b h1:M2rDM6z3Fhozi9O7NWsxAkg/yqS/lQJ6PmkyIV3YP+o=
 golang.org/x/exp/typeparams v0.0.0-20220428152302-39d4317da171/go.mod h1:AbB0pIl9nAr9wVwH+Z2ZpaocVmF5I4GyWCDIsVjR0bk=
 golang.org/x/exp/typeparams v0.0.0-20230203172020-98cc5a0785f9/go.mod h1:AbB0pIl9nAr9wVwH+Z2ZpaocVmF5I4GyWCDIsVjR0bk=
 golang.org/x/exp/typeparams v0.0.0-20251023183803-a4bb9ffd2546 h1:HDjDiATsGqvuqvkDvgJjD1IgPrVekcSXVVE21JwvzGE=
 golang.org/x/exp/typeparams v0.0.0-20251023183803-a4bb9ffd2546/go.mod h1:4Mzdyp/6jzw9auFDJ3OMF5qksa7UvPnzKqTVGcb04ms=
+golang.org/x/exp/typeparams v0.0.0-20260209203927-2842357ff358 h1:qWFG1Dj7TBjOjOvhEOkmyGPVoquqUKnIU0lEVLp8xyk=
+golang.org/x/exp/typeparams v0.0.0-20260209203927-2842357ff358/go.mod h1:4Mzdyp/6jzw9auFDJ3OMF5qksa7UvPnzKqTVGcb04ms=
 golang.org/x/image v0.0.0-20190227222117-0694c2d4d067/go.mod h1:kZ7UVZpmo3dzQBMxlp+ypCbDeSB+sBbTgSJuh5dn5js=
 golang.org/x/image v0.0.0-20190802002840-cff245a6509b/go.mod h1:FeLwcggjj3mMvU+oOTbSwawSJRM1uh48EjtB4UJZlP0=
 golang.org/x/lint v0.0.0-20181026193005-c67002cb31c3/go.mod h1:UVdnD1Gm6xHRNCYTkRU2/jEulfH38KcIWyp/GAMgvoE=
@@ -748,6 +904,8 @@ golang.org/x/mod v0.12.0/go.mod h1:iBbtSCu2XBx23ZKBPSOrRkjjQPZFPuis4dIYUhu/chs=
 golang.org/x/mod v0.13.0/go.mod h1:hTbmBsO62+eylJbnUtE2MGJUyE7QWk4xUqPFrRgJ+7c=
 golang.org/x/mod v0.35.0 h1:Ww1D637e6Pg+Zb2KrWfHQUnH2dQRLBQyAtpr/haaJeM=
 golang.org/x/mod v0.35.0/go.mod h1:+GwiRhIInF8wPm+4AoT6L0FA1QWAad3OMdTRx4tFYlU=
+golang.org/x/mod v0.39.0 h1:UF5zwQdCRRUpHfyPwr7d4UrGiVeldIsogtzWVnczL74=
+golang.org/x/mod v0.39.0/go.mod h1:bvIbwjQ0HUFFf5AKukeeYQG4ZBUG9yxQbR9aEweIwYY=
 golang.org/x/net v0.0.0-20180724234803-3673e40ba225/go.mod h1:mL1N/T3taQHkDXs73rZJwtUhF3w3ftmwwsq0BUmARs4=
 golang.org/x/net v0.0.0-20180826012351-8a410e7b638d/go.mod h1:mL1N/T3taQHkDXs73rZJwtUhF3w3ftmwwsq0BUmARs4=
 golang.org/x/net v0.0.0-20181114220301-adae6a3d119a/go.mod h1:mL1N/T3taQHkDXs73rZJwtUhF3w3ftmwwsq0BUmARs4=
@@ -788,6 +946,8 @@ golang.org/x/net v0.15.0/go.mod h1:idbUs1IY1+zTqbi8yxTbhexhEEk5ur9LInksu6HrEpk=
 golang.org/x/net v0.16.0/go.mod h1:NxSsAGuq816PNPmqtQdLE42eU2Fs7NoRIZrHJAlaCOE=
 golang.org/x/net v0.55.0 h1:bcvxaJn3e1U6InsFWt1JUq1aSjnRxLzT2rtD2KfkDF8=
 golang.org/x/net v0.55.0/go.mod h1:L5U2KuzuOe1lY7Z+aWVIKK6qEeJXnXV9yzGA+WCHJww=
+golang.org/x/net v0.58.0 h1:ynWG7rqYi4ccpTEuPZ2QGWHktVEM9DMCj9yzDE0Q7To=
+golang.org/x/net v0.58.0/go.mod h1:YwCddHnFlT7eLQqVprV19OnhLGtc5xOKgE0RyqgfWAU=
 golang.org/x/oauth2 v0.0.0-20180821212333-d2e6202438be/go.mod h1:N/0e6XlmueqKjAGxoOufVs8QHGRruUQn6yWY3a++T0U=
 golang.org/x/oauth2 v0.0.0-20190226205417-e64efc72b421/go.mod h1:gOpvHmFTYa4IltrdGE7lF6nIHvwfUNPOp7c8zoXwtLw=
 golang.org/x/oauth2 v0.0.0-20190604053449-0f29369cfe45/go.mod h1:gOpvHmFTYa4IltrdGE7lF6nIHvwfUNPOp7c8zoXwtLw=
@@ -811,6 +971,8 @@ golang.org/x/sync v0.3.0/go.mod h1:FU7BRWz2tNW+3quACPkgCx/L+uEAv1htQ0V83Z9Rj+Y=
 golang.org/x/sync v0.4.0/go.mod h1:FU7BRWz2tNW+3quACPkgCx/L+uEAv1htQ0V83Z9Rj+Y=
 golang.org/x/sync v0.20.0 h1:e0PTpb7pjO8GAtTs2dQ6jYa5BWYlMuX047Dco/pItO4=
 golang.org/x/sync v0.20.0/go.mod h1:9xrNwdLfx4jkKbNva9FpL6vEN7evnE43NNNJQ2LF3+0=
+golang.org/x/sync v0.22.0 h1:SZjpbeLmrCk4xhRSZFNZW5gFUeCeFgjekvI/+gfScek=
+golang.org/x/sync v0.22.0/go.mod h1:9xrNwdLfx4jkKbNva9FpL6vEN7evnE43NNNJQ2LF3+0=
 golang.org/x/sys v0.0.0-20180830151530-49385e6e1522/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY=
 golang.org/x/sys v0.0.0-20180905080454-ebe1bf3edb33/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY=
 golang.org/x/sys v0.0.0-20181116152217-5ac8a444bdc5/go.mod h1:STP8DvDyc/dI5b8T5hshtkjS+E42TnysNCUPdjciGhY=
@@ -864,8 +1026,12 @@ golang.org/x/sys v0.12.0/go.mod h1:oPkhp1MJrh7nUepCBck5+mAzfO9JrbApNNgaTdGDITg=
 golang.org/x/sys v0.13.0/go.mod h1:oPkhp1MJrh7nUepCBck5+mAzfO9JrbApNNgaTdGDITg=
 golang.org/x/sys v0.45.0 h1:dO4czNzziLiiXplLQgBCEpCvXQ3dnkn0SdaZSYdQ+FY=
 golang.org/x/sys v0.45.0/go.mod h1:4GL1E5IUh+htKOUEOaiffhrAeqysfVGipDYzABqnCmw=
+golang.org/x/sys v0.47.0 h1:o7XGOvZQCADBQQ4Y7VNq2dRWQR7JmOUW8Kxx4ZsNgWs=
+golang.org/x/sys v0.47.0/go.mod h1:4GL1E5IUh+htKOUEOaiffhrAeqysfVGipDYzABqnCmw=
 golang.org/x/telemetry v0.0.0-20260409153401-be6f6cb8b1fa h1:efT73AJZfAAUV7SOip6pWGkwJDzIGiKBZGVzHYa+ve4=
 golang.org/x/telemetry v0.0.0-20260409153401-be6f6cb8b1fa/go.mod h1:kHjTxDEnAu6/Nl9lDkzjWpR+bmKfxeiRuSDlsMb70gE=
+golang.org/x/telemetry v0.0.0-20260811182544-a038080d80e5 h1:ZUSxONxc981v7AW7QUg+I9WwZzSTTJ019ENBYr5pV/Q=
+golang.org/x/telemetry v0.0.0-20260811182544-a038080d80e5/go.mod h1:LVehoXe41cL5SCVQilsV7Gg6BNG+Js6P9PhSbYTIUkQ=
 golang.org/x/term v0.0.0-20201126162022-7de9c90e9dd1/go.mod h1:bj7SfCRtBDWHUb9snDiAeCFNEtKQo2Wmx5Cou7ajbmo=
 golang.org/x/term v0.0.0-20210927222741-03fcf44c2211/go.mod h1:jbD1KX2456YbFQfuXm/mYQcufACuNUgVhRMnK/tPxf8=
 golang.org/x/term v0.5.0/go.mod h1:jMB1sMXY+tzblOD4FWmEbocvup2/aLOaQEp7JmGp78k=
@@ -884,6 +1050,8 @@ golang.org/x/text v0.9.0/go.mod h1:e1OnstbJyHTd6l/uOt8jFFHp6TRDWZR/bV3emEE/zU8=
 golang.org/x/text v0.13.0/go.mod h1:TvPlkZtksWOMsz7fbANvkp4WM8x/WCo/om8BMLbz+aE=
 golang.org/x/text v0.37.0 h1:Cqjiwd9eSg8e0QAkyCaQTNHFIIzWtidPahFWR83rTrc=
 golang.org/x/text v0.37.0/go.mod h1:a5sjxXGs9hsn/AJVwuElvCAo9v8QYLzvavO5z2PiM38=
+golang.org/x/text v0.41.0 h1:vz/seA0lnX87Othu2f/0L24RcgrXD9/YFTSuGjj3rH8=
+golang.org/x/text v0.41.0/go.mod h1:jvf1O8ajNzZqhSrQBPbutR/EB83Cc0CFrezNQIwbb5M=
 golang.org/x/time v0.0.0-20181108054448-85acf8d2951c/go.mod h1:tRJNPiyCQ0inRvYxbN9jk5I+vvW/OXSQhTDSoE431IQ=
 golang.org/x/time v0.0.0-20190308202827-9d24e82272b4/go.mod h1:tRJNPiyCQ0inRvYxbN9jk5I+vvW/OXSQhTDSoE431IQ=
 golang.org/x/time v0.0.0-20191024005414-555d28b269f0/go.mod h1:tRJNPiyCQ0inRvYxbN9jk5I+vvW/OXSQhTDSoE431IQ=
@@ -939,18 +1107,23 @@ golang.org/x/tools v0.13.0/go.mod h1:HvlwmtVNQAhOuCjW7xxvovg8wbNq7LwfXh/k7wXUl58
 golang.org/x/tools v0.14.0/go.mod h1:uYBEerGOWcJyEORxN+Ek8+TT266gXkNlHdJBwexUsBg=
 golang.org/x/tools v0.44.0 h1:UP4ajHPIcuMjT1GqzDWRlalUEoY+uzoZKnhOjbIPD2c=
 golang.org/x/tools v0.44.0/go.mod h1:KA0AfVErSdxRZIsOVipbv3rQhVXTnlU6UhKxHd1seDI=
+golang.org/x/tools v0.49.0 h1:3NI7VXzL9+1WZD52Dx2ttoPwD5DWrFGpl9mFZDlmisI=
+golang.org/x/tools v0.49.0/go.mod h1:SJNXV9DBKT0UbdttsQjbfJlAE/q+y36++zo3uL3N0Oo=
 golang.org/x/tools/go/expect v0.1.1-deprecated h1:jpBZDwmgPhXsKZC6WhL20P4b/wmnpsEAGHaNy0n/rJM=
 golang.org/x/tools/go/expect v0.1.1-deprecated/go.mod h1:eihoPOH+FgIqa3FpoTwguz/bVUSGBlGQU67vpBeOrBY=
 golang.org/x/tools/go/packages/packagestest v0.1.1-deprecated h1:1h2MnaIAIXISqTFKdENegdpAgUXz6NrPEsbIeWaBRvM=
 golang.org/x/tools/go/packages/packagestest v0.1.1-deprecated/go.mod h1:RVAQXBGNv1ib0J382/DPCRS/BPnsGebyM1Gj5VSDpG8=
 golang.org/x/vuln v1.1.4 h1:Ju8QsuyhX3Hk8ma3CesTbO8vfJD9EvUBgHvkxHBzj0I=
 golang.org/x/vuln v1.1.4/go.mod h1:F+45wmU18ym/ca5PLTPLsSzr2KppzswxPP603ldA67s=
+golang.org/x/vuln v1.7.0 h1:4MQBuhmXbz2uepNJrf3v+aaZLGDqw1JluwYboegA1qg=
+golang.org/x/vuln v1.7.0/go.mod h1:Xw7zvU3e1bsCYYBXu+w4wcn2Kgn27f34WBCTw8LL5Us=
 golang.org/x/xerrors v0.0.0-20190717185122-a985d3407aa7/go.mod h1:I/5z698sn9Ka8TeJc9MKroUUfqBBauWjQqLJ2OPfmY0=
 golang.org/x/xerrors v0.0.0-20191011141410-1b5146add898/go.mod h1:I/5z698sn9Ka8TeJc9MKroUUfqBBauWjQqLJ2OPfmY0=
 golang.org/x/xerrors v0.0.0-20191204190536-9bdfabe68543/go.mod h1:I/5z698sn9Ka8TeJc9MKroUUfqBBauWjQqLJ2OPfmY0=
 golang.org/x/xerrors v0.0.0-20200804184101-5ec99f83aff1/go.mod h1:I/5z698sn9Ka8TeJc9MKroUUfqBBauWjQqLJ2OPfmY0=
 gonum.org/v1/gonum v0.16.0 h1:5+ul4Swaf3ESvrOnidPp4GZbzf0mxVQpDCYUQE7OJfk=
 gonum.org/v1/gonum v0.16.0/go.mod h1:fef3am4MQ93R2HHpKnLk4/Tbh/s0+wqD5nfa6Pnwy4E=
+gonum.org/v1/gonum v0.17.0 h1:VbpOemQlsSMrYmn7T2OUvQ4dqxQXU+ouZFQsZOx50z4=
 google.golang.org/api v0.4.0/go.mod h1:8k5glujaEP+g9n7WNsDg8QP6cUVNI86fCNMcbazEtwE=
 google.golang.org/api v0.7.0/go.mod h1:WtwebWUNSVBH/HAw79HIFXZNqEvBhG+Ra+ax0hx3E3M=
 google.golang.org/api v0.8.0/go.mod h1:o4eAsZoiT+ibD93RtjEohWalFOjRDx6CVaqeizhEnKg=
@@ -967,6 +1140,8 @@ google.golang.org/api v0.24.0/go.mod h1:lIXQywCXRcnZPGlsd8NbLnOjtAoL6em04bJ9+z0M
 google.golang.org/api v0.28.0/go.mod h1:lIXQywCXRcnZPGlsd8NbLnOjtAoL6em04bJ9+z0MncE=
 google.golang.org/api v0.29.0/go.mod h1:Lcubydp8VUV7KeIHD9z2Bys/sm/vGKnG1UHuDBSrHWM=
 google.golang.org/api v0.30.0/go.mod h1:QGmEvQ87FHZNiUVJkT14jQNYJ4ZJjdRF23ZXz5138Fc=
+google.golang.org/api v0.288.0 h1:glhO/J88obKP5I269W3hB73dvBKrjU56ZfmNlNXpgTU=
+google.golang.org/api v0.288.0/go.mod h1:lM2kYRzYUCBY91P9h6VF1PYmvhxii3O5hji37qRvIcY=
 google.golang.org/appengine v1.1.0/go.mod h1:EbEs0AVv82hx2wNQdGPgUI5lhzA/G0D9YwlJXL52JkM=
 google.golang.org/appengine v1.4.0/go.mod h1:xpcJRLb0r/rnEns0DIKYYv+WjYCduHsrkT7/EB5XEv4=
 google.golang.org/appengine v1.5.0/go.mod h1:xpcJRLb0r/rnEns0DIKYYv+WjYCduHsrkT7/EB5XEv4=
@@ -975,6 +1150,8 @@ google.golang.org/appengine v1.6.5/go.mod h1:8WjMMxjGQR8xUklV/ARdw2HLXBOI7O7uCID
 google.golang.org/appengine v1.6.6/go.mod h1:8WjMMxjGQR8xUklV/ARdw2HLXBOI7O7uCIDZVag1xfc=
 google.golang.org/genai v1.37.0 h1:dgp71k1wQ+/+APdZrN3LFgAGnVnr5IdTF1Oj0Dg+BQc=
 google.golang.org/genai v1.37.0/go.mod h1:A3kkl0nyBjyFlNjgxIwKq70julKbIxpSxqKO5gw/gmk=
+google.golang.org/genai v1.63.0 h1:Iryg+4TBco5HaRbwVhAV/ROKVcWiZkuvQzKb4u1QggY=
+google.golang.org/genai v1.63.0/go.mod h1:mDdPDFXo1Ats7f1WXVyZgWb/CkMzFWTWJruIMy7hGIU=
 google.golang.org/genproto v0.0.0-20180817151627-c66870c02cf8/go.mod h1:JiN7NxoALGmiZfu7CAH4rXhgtRTLTxftemlI0sWmxmc=
 google.golang.org/genproto v0.0.0-20190307195333-5fe7a883aa19/go.mod h1:VzzqZJRnGkLBvHegQrXjBqPurQTc5/KpmUdxsrq26oE=
 google.golang.org/genproto v0.0.0-20190418145605-e7d98fc518a7/go.mod h1:VzzqZJRnGkLBvHegQrXjBqPurQTc5/KpmUdxsrq26oE=
@@ -1006,6 +1183,8 @@ google.golang.org/genproto v0.0.0-20200804131852-c06518451d9c/go.mod h1:FWY/as6D
 google.golang.org/genproto v0.0.0-20200825200019-8632dd797987/go.mod h1:FWY/as6DDZQgahTzZj3fqbO1CbirC29ZNUFHwi0/+no=
 google.golang.org/genproto/googleapis/rpc v0.0.0-20251202230838-ff82c1b0f217 h1:gRkg/vSppuSQoDjxyiGfN4Upv/h/DQmIR10ZU8dh4Ww=
 google.golang.org/genproto/googleapis/rpc v0.0.0-20251202230838-ff82c1b0f217/go.mod h1:7i2o+ce6H/6BluujYR+kqX3GKH+dChPTQU19wjRPiGk=
+google.golang.org/genproto/googleapis/rpc v0.0.0-20260706201446-f0a921348800 h1:qEHAMpSaUhtD0p3NbEEI83HwNGFxEwaSJ1G9PLnCBZE=
+google.golang.org/genproto/googleapis/rpc v0.0.0-20260706201446-f0a921348800/go.mod h1:4Hqkh8ycfw05ld/3BWL7rJOSfebL2Q+DVDeRgYgxUU8=
 google.golang.org/grpc v1.19.0/go.mod h1:mqu4LbDTu4XGKhr4mRzUsmM4RtVoemTSY81AxZiDr8c=
 google.golang.org/grpc v1.20.1/go.mod h1:10oTOabMzJvdu6/UiuZezV6QK5dSlG84ov/aaiqXj38=
 google.golang.org/grpc v1.21.1/go.mod h1:oYelfM1adQP15Ek0mdvEgi9Df8B9CZIaU1084ijfRaM=
@@ -1020,6 +1199,8 @@ google.golang.org/grpc v1.30.0/go.mod h1:N36X2cJ7JwdamYAgDz+s+rVMFjt3numwzf/HckM
 google.golang.org/grpc v1.31.0/go.mod h1:N36X2cJ7JwdamYAgDz+s+rVMFjt3numwzf/HckM8pak=
 google.golang.org/grpc v1.79.3 h1:sybAEdRIEtvcD68Gx7dmnwjZKlyfuc61Dyo9pGXXkKE=
 google.golang.org/grpc v1.79.3/go.mod h1:KmT0Kjez+0dde/v2j9vzwoAScgEPx/Bw1CYChhHLrHQ=
+google.golang.org/grpc v1.82.0 h1:vguDnZUPjE26w09A63VoxZPnvPjB5Riyc0mkXPFmAIU=
+google.golang.org/grpc v1.82.0/go.mod h1:yzTZ1TB1Z3SG+LIYaI+WiE8D5+PZ3ArnrSp8zF3+/ZA=
 google.golang.org/protobuf v0.0.0-20200109180630-ec00e32a8dfd/go.mod h1:DFci5gLYBciE7Vtevhsrf46CRTquxDuWsQurQQe4oz8=
 google.golang.org/protobuf v0.0.0-20200221191635-4d8936d0db64/go.mod h1:kwYJMbMJ01Woi6D6+Kah6886xMZcty6N08ah7+eCXa0=
 google.golang.org/protobuf v0.0.0-20200228230310-ab0ca4ff8a60/go.mod h1:cfTl7dwQJ+fmap5saPgwCLgHXTUD7jkjRqWcaiX5VyM=
@@ -1034,6 +1215,8 @@ google.golang.org/protobuf v1.26.0-rc.1/go.mod h1:jlhhOSvTdKEhbULTjvd4ARK9grFBp0
 google.golang.org/protobuf v1.26.0/go.mod h1:9q0QmTI4eRPtz6boOQmLYwt+qCgq0jsYwAQnmE0givc=
 google.golang.org/protobuf v1.36.10 h1:AYd7cD/uASjIL6Q9LiTjz8JLcrh/88q5UObnmY3aOOE=
 google.golang.org/protobuf v1.36.10/go.mod h1:HTf+CrKn2C3g5S8VImy6tdcUvCska2kB7j23XfzDpco=
+google.golang.org/protobuf v1.36.11 h1:fV6ZwhNocDyBLK0dj+fg8ektcVegBBuEolpbTQyBNVE=
+google.golang.org/protobuf v1.36.11/go.mod h1:HTf+CrKn2C3g5S8VImy6tdcUvCska2kB7j23XfzDpco=
 gopkg.in/alecthomas/kingpin.v2 v2.2.6/go.mod h1:FMv+mEhP44yOT+4EoQTLFTRgOQ1FBLkstjWtayDeSgw=
 gopkg.in/check.v1 v0.0.0-20161208181325-20d25e280405/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0=
 gopkg.in/check.v1 v1.0.0-20180628173108-788fd7840127/go.mod h1:Co6ibVJAznAaIkqp8huTwlJQCZ016jof/cbN4VW5Yz0=
@@ -1062,6 +1245,8 @@ honnef.co/go/tools v0.0.1-2020.1.3/go.mod h1:X/FiERA/W4tHapMX5mGpAtMSVEeEUOyHaw9
 honnef.co/go/tools v0.0.1-2020.1.4/go.mod h1:X/FiERA/W4tHapMX5mGpAtMSVEeEUOyHaw9vFzvIQ3k=
 honnef.co/go/tools v0.6.1 h1:R094WgE8K4JirYjBaOpz/AvTyUu/3wbmAoskKN/pxTI=
 honnef.co/go/tools v0.6.1/go.mod h1:3puzxxljPCe8RGJX7BIy1plGbxEOZni5mR2aXe3/uk4=
+honnef.co/go/tools v0.7.0 h1:w6WUp1VbkqPEgLz4rkBzH/CSU6HkoqNLp6GstyTx3lU=
+honnef.co/go/tools v0.7.0/go.mod h1:pm29oPxeP3P82ISxZDgIYeOaf9ta6Pi0EWvCFoLG2vc=
 mvdan.cc/gofumpt v0.9.2 h1:zsEMWL8SVKGHNztrx6uZrXdp7AX8r421Vvp23sz7ik4=
 mvdan.cc/gofumpt v0.9.2/go.mod h1:iB7Hn+ai8lPvofHd9ZFGVg2GOr8sBUw1QUWjNbmIL/s=
 mvdan.cc/unparam v0.0.0-20251027182757-5beb8c8f8f15 h1:ssMzja7PDPJV8FStj7hq9IKiuiKhgz9ErWw+m68e7DI=

### Workflow changes

### Potential breakages
- Verify CI passes with updated versions.
- Verify local setup scripts still install pinned tools.
- Verify release workflow continues to build tagged releases.
