# Build bin/app for the selected Linux architecture before building this image.
FROM scratch
COPY --chmod=0555 bin/app /app
USER 65532:65532
ENTRYPOINT ["/app"]
