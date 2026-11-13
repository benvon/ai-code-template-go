# Local development dependencies

Use Compose when development needs an actual external service. Do not add a
database, cache, or queue solely because the template can support one.

## Adopt

Add compose.yaml containing only required development services. Pin images with
an update policy, bind published ports to loopback, use nonproduction credentials
and named volumes deliberately, and add service health checks. Keep application
execution through the same project tasks unless a development image is useful.
Use `docker compose`, not the retired standalone docker-compose command.

Introduce configuration only for services the application consumes. Commit fake
examples, keep real credentials out of Git, and document volume deletion and
reset behavior. Container publication is a separate recipe.

## Verify and maintain

Run `docker compose config`, start the selected services, and exercise an actual
application connection and failure/reconnection paths. Verify teardown and data
persistence. No universal Compose file is supplied because service selection,
credentials, ports, and persistence are application decisions.
