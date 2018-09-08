FROM alpine:3.7
 
RUN set -xe \
    && apk add --update nodejs nodejs-npm 
    
ADD bin/apk-install /usr/sbin/apk-install
RUN chmod +x /usr/sbin/apk-install

RUN apk-install sudo

RUN adduser -D default;                                               \
    chgrp -R default /usr/local;                                      \
    find /usr/local -type d | xargs chmod g+w;                        \
    echo "default ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/default; \
    chmod 0440 /etc/sudoers.d/default

ADD bin/dumb-init_1.0.0 /usr/local/bin/dumb-init
RUN chmod +x /usr/local/bin/dumb-init

ENV     HOME /home/default
WORKDIR /home/default
USER    default
