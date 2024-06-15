FROM alpine:3.11
WORKDIR /rathena
RUN apk add --no-cache wget git cmake make gcc g++ gdb zlib-dev mariadb-dev ca-certificates linux-headers bash valgrind netcat-openbsd
COPY configure /configure
COPY builder.sh /builder.sh
ENTRYPOINT [ "/builder.sh" ]