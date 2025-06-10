# Base image
FROM alpine:latest

# Maintainer information
LABEL maintainer="CasjaysDev <https://github.com/casjaysdev>" \
      org.label-schema.vcs-url="https://github.com/casjaysdev/docker-certbot-duckdns"

# Install tools required
RUN apk --no-cache add bash certbot curl py3-pip && pip install certbot_dns_duckdns --break-system-packages

# Copy scripts
WORKDIR /scripts
COPY ./scripts /scripts
RUN chmod -R +x /scripts

# Image starting command
CMD ["/bin/bash", "/scripts/start.sh"]
