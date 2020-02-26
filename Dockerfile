FROM node:10.14.1-alpine
RUN apk update && apk upgrade && \
    apk add --no-cache bash git openssh

COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
