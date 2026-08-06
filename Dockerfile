FROM ghcr.io/maplibre/martin:1.12.0
COPY config.yaml /config.yaml
EXPOSE 3000
ENV MARTIN_CORS_ALLOWED_ORIGIN="*"
CMD ["--config", "/config.yaml"]
