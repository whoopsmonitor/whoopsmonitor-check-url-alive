FROM php:8.0.3-cli-alpine3.13
LABEL maintainer="DevRel <devrel@mallgroup.com>"
LABEL org.opencontainers.image.source="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"

LABEL com.whoopsmonitor.documentation="https://github.com/whoopsmonitor/whoopsmonitor-check-url-alive"
LABEL com.whoopsmonitor.env.WM_ENDPOINT_URL="Endpoint URL to check"

WORKDIR /usr/src

COPY ./src/index.php ./index.php

CMD [ "php", "./index.php" ]
