FROM alpine:3.4
RUN apk add --update git bash openssh useradd
RUN adduser -G bot2 -g bot -S bot -s /bin/bash -D bot2
WORKDIR /home/bo2
ADD post-message /usr/bin/post-message
ENTRYPOINT ["/usr/bin/post-message"]

