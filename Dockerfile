FROM alpine:latest
MAINTAINER keneanung <keneanung@googlemail.com>
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --update git lua luarocks@testing
