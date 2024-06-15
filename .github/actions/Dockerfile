FROM alpine:3.11
WORKDIR $GITHUB_WORKSPACE/rathena
RUN apk add --no-cache wget git cmake make gcc g++ gdb zlib-dev mariadb-dev ca-certificates linux-headers bash valgrind netcat-openbsd
RUN pwd
RUN ls -l
ENTRYPOINT [ "/builder.sh" ]