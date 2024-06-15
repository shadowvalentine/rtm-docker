FROM alpine:3.11
RUN apk add --no-cache wget git cmake make gcc g++ gdb zlib-dev mariadb-dev ca-certificates linux-headers bash valgrind netcat-openbsd
RUN pwd
RUN ls -l
COPY configure /configure
COPY builder.sh /builder.sh
ENTRYPOINT [ "/builder.sh" ]