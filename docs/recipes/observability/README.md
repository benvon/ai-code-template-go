# Observability

Add operational telemetry when a running application needs it. The greeting
executable does not need a metrics server, tracing backend, or logging framework.

## Adopt

Start with standard-library slog for structured operational logs. Define events,
levels, and request/correlation identifiers without logging credentials or bodies
by default. When metrics or tracing are needed, choose a backend and maintained
instrumentation, define time/resource limits, and document sampling and retention.
Expose diagnostic endpoints only across an appropriate access boundary.

## Verify and maintain

Exercise a real success and failure path, confirm useful correlated output, and
test exporter failure without blocking application work indefinitely. Check
sensitive-data redaction and resource cost. Ownership of dashboards, alerts,
exporter dependencies, and backend access belongs to the adopting project.
