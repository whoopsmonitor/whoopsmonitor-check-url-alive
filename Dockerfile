FROM php:7.4.9-cli-alpine3.12
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"
LABEL com.whoopsmonitor.env.WM_ENDPOINT_URL="Endpoint URL to check"
LABEL com.whoopsmonitor.env.WM_BEARER_TOKEN="Enter bearer token or remove"

WORKDIR /usr/src

COPY ./src/index.php ./index.php

CMD [ "php", "./index.php" ]
