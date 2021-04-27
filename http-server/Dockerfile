FROM alpine

RUN apk update
RUN apk add python3
WORKDIR /mnt/coreos
CMD python3 -m http.server 8014