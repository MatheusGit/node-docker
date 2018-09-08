FROM alpine:3.8
    
RUN set -xe \
    && apk add --update nodejs nodejs-npm 
    
RUN apk add sudo
    
RUN adduser -D foo

USER foo
    
CMD [ "node" ]
