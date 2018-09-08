FROM alpine:3.7
 
RUN addgroup -g 1000 node \
    && adduser -u 1000 -G node -s /bin/sh -D node \
    
RUN set -xe \
    && apk add --update nodejs nodejs-npm 
    
