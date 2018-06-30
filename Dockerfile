FROM alpine:3.7

RUN set -xe \
    && apk add --update nodejs nodejs-npm
