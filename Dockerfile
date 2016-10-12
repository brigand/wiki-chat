FROM alpine:3.4
RUN apk add --update git bash openssh useradd
RUN adduser -G bot -g bot -S bot -s /bin/bash -D bot
WORKDIR /home/bot
ADD post-message /usr/bin/post-message
ENTRYPOINT ["/usr/bin/post-message"]

