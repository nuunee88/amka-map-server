FROM ghcr.io/maplibre/martin:v0.14
COPY config.yaml /config.yaml
EXPOSE 3000
CMD ["--config", "/config.yaml"]
