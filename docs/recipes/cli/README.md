# CLI application

Use this when the executable needs an argument/help contract. The baseline
already runs; adopting a command framework is a separate dependency decision.

## Adopt

Adapt main.go and main_test.go from testdata into the application module. Keep
main responsible for process exit and pass arguments/output to a testable run
function. Replace the example command and flag names. The standard flag package
is enough for small tools; choose a framework only when command complexity
justifies its cost. Define help, invalid-input, and exit-code behavior explicitly.
Version output can be added with Go build information or a deliberate release
metadata contract when adopting binary releases.

## Verify and maintain

Run `go test -race ./...`, `go run . -name Ada`, and `go run . -h` in the adopted
project. Test invalid flags, unexpected positionals, output errors, and help.
The isolated example is tested by scripts/recipes_test.sh. Changes to flags and
exit codes can affect scripts that call the tool; treat them as an interface.
