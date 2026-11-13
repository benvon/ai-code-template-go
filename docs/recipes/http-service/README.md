# HTTP service

Use this when a long-running HTTP process is actually required. It adds runtime
lifecycle concerns without adding a web framework or unrelated database settings.

## Adopt

Adapt the independent testdata/main.go and tests into the application module.
The example binds to loopback, applies header/read/write/idle timeouts, serves
GET /health, logs with slog, and handles interrupt/termination with bounded
shutdown. Move handlers into internal packages only as the service grows.

Introduce validated configuration for the settings you consume. Reject invalid
addresses, timeouts, or security settings rather than silently defaulting them.
For container ingress, deliberately configure the bind address for that runtime.
Define TLS termination, authentication/authorization, request/body limits, error
responses, and readiness separately according to the actual service boundary.
Do not present a liveness response as proof that external dependencies are ready.

## Verify and maintain

Run `make ci-local`, start the service, request /health, then send SIGTERM and
verify in-flight request handling and shutdown deadlines in the target runtime.
The isolated example tests routes, methods, startup failure, and cancellation;
it does not prove deployment behavior. Add real configuration and lifecycle
integration tests when adopting it. Keep timeout and health semantics documented
as the service acquires dependencies.
