FROM alpine:3.8
MAINTAINER 915xin <915xin@gmail.com>

WORKDIR /nme
COPY ./c /nme/c
RUN chmod +x /nme/c

ENV SERVERIP 127.0.0.1:1066
ENV VKEY ""
ENV AUTO ""

CMD /nme/c -server=${SERVERIP} -vkey=${VKEY} -auto=${AUTO}
