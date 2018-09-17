FROM alpine:3.8
    
RUN set -xe \
    && apk add --update nodejs nodejs-npm 
    
# RUN apk add sudo

# # RUN adduser -D default;                                               \
# #     chgrp -R default /usr/local;                                      \
# #     find /usr/local -type d | xargs chmod g+w;                        \
# #     echo "default ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers.d/default; \
# #     chmod 0440 /etc/sudoers.d/default

# # ENV     HOME /home/default
# # WORKDIR /home/default
# USER    root
