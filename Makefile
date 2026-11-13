.DEFAULT_GOAL := help
TOOLS_MODFILE := tools/go.mod
BUILD_DIR := bin

.PHONY: help fmt fmt-check lint test build check ci-local security vulnerability-check mod-tidy-check setup clean init-template template-check maintenance-update maintenance-validate maintenance-tests

help:
	@echo 'Everyday: make fmt | check | test | build'
	@echo 'Complete validation: make ci-local'
	@echo 'Template maintainers: make template-check'
	@echo 'Initialize: make init-template MODULE_PATH=example.com/project PROJECT_NAME=project'

fmt:
	./scripts/format.sh

fmt-check:
	./scripts/format.sh --check

lint:
	go tool -modfile=$(TOOLS_MODFILE) golangci-lint run

test:
	go test -race ./...

build:
	mkdir -p $(BUILD_DIR)
	go build -trimpath -o $(BUILD_DIR)/app .

# The quick check shares its commands with full CI; race tests are explicit.
check: fmt-check lint
	go test ./...

security:
	go tool -modfile=$(TOOLS_MODFILE) gosec ./...

vulnerability-check:
	go tool -modfile=$(TOOLS_MODFILE) govulncheck ./...

mod-tidy-check:
	go mod tidy -diff

ci-local: fmt-check lint test build security vulnerability-check mod-tidy-check

setup:
	go mod download
	go mod download -modfile=$(TOOLS_MODFILE)
	go mod verify

clean:
	rm -rf $(BUILD_DIR)

init-template:
	./scripts/init_template.sh "$(MODULE_PATH)" "$(PROJECT_NAME)"

# These maintain the template itself; applications use check/test/build/ci-local.
template-check:
	./scripts/check_guardrails.sh
	./scripts/template_test.sh
	./scripts/recipes_test.sh
	$(MAKE) maintenance-validate maintenance-tests

maintenance-update:
	./scripts/maintenance/update_versions.sh --discover-latest

maintenance-validate:
	./scripts/maintenance/validate.sh

maintenance-tests:
	./scripts/maintenance/validate_test.sh
	./scripts/maintenance/idempotency_test.sh
	./scripts/maintenance/update_versions_test.sh
