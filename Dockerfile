FROM ghcr.io/maplibre/martin:v1.8.0
COPY config.yaml /config.yaml
EXPOSE 3000
CMD ["--config", "/config.yaml"]
