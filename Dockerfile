FROM crystallang/crystal:0.33.0-alpine

RUN apk update && \
    apk upgrade && \
    apk add --no-cache \
    jq
