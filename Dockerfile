FROM alpine:latest
MAINTAINER keneanung <keneanung@googlemail.com>
RUN echo "@testing http://nl.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk add --update bash git lua luarocks@testing
RUN luarocks install penlight
RUN git clone https://github.com/stevedonovan/LDoc.git
RUN cd LDoc && make && make install && cd .. && rm -rf LDoc
