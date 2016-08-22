FROM alpine:latest
MAINTAINER keneanung <keneanung@googlemail.com>
RUN echo "@community http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories
RUN apk add --update bash gcc make git lua lua-dev musl-dev luarocks@community
RUN luarocks-5.1 install penlight
RUN git clone https://github.com/stevedonovan/LDoc.git
RUN cd LDoc && make && make install && cd .. && rm -rf LDoc
