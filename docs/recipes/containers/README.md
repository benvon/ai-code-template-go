# Container delivery

Use this when the execution environment requires an image. Container delivery
is independent of both binary archives and local development dependencies.

## Adopt

Copy Dockerfile and dockerignore here to Dockerfile and .dockerignore at the
project root. Build a static binary for a deliberately selected target:

```sh
mkdir -p bin
CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -trimpath -o bin/app .
docker build --platform linux/amd64 -t app:dev .
docker run --rm --platform linux/amd64 app:dev
```

This example packages the baseline executable, which prints a greeting and
exits. It has no server port or health check. A service recipe must introduce
its own bind address, health behavior, and runtime settings.

The scratch image contains only the executable and runs as a numeric non-root
user. Add trust roots, timezone data, or other runtime assets when the application
needs them. If choosing another base, pin its digest and establish updates.
A CGO-dependent program requires an appropriate runtime; do not force static
build settings onto dependencies that cannot support them.

## Verify and maintain

Build/run on each supported target architecture, inspect image contents and
user identity, and test read-only filesystems and shutdown for service workloads.
Docker availability is required; Go recipe tests do not validate an image.
Registry login, image scanning/provenance, multi-architecture publishing, and
deployment need explicit project configuration and authorization.
