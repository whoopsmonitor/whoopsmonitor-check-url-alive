FROM php:7.4.9-cli-alpine3.12
LABEL maintainer="Daniel Rataj <daniel.rataj@centrum.cz>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"
LABEl com.whoopsmonitor.icon="data:image/png;base64,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"
LABEL com.whoopsmonitor.env.WM_ENDPOINT_URL="Endpoint URL to check"
LABEL com.whoopsmonitor.env.WM_BEARER_TOKEN="Enter bearer token or remove"
WORKDIR /usr/src

COPY ./src/index.php ./index.php

CMD [ "php", "./index.php" ]
