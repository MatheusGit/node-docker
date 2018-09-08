FROM alpine:3.7
 
RUN set -xe \
    && apk add --update nodejs nodejs-npm 
    
COPY sudoers /etc/
RUN apk update && \
    apk add sudo && \
    adduser -u 1000 -G wheel -D alpine && \
    rm -rf /var/cache/apk/*
USER alpine
   
