FROM alpine:latest

RUN apk --update add alpine-sdk sudo vim \
    && rm -rf /var/cache/apk/*

RUN adduser -h /home/alpine -s /bin/sh -D alpine alpine \
    && echo "alpine ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers

USER alpine
WORKDIR /home/alpine

COPY docker-entrypoint.sh /home/alpine/docker-entrypoint.sh

ENTRYPOINT ["/home/alpine/docker-entrypoint.sh"]
