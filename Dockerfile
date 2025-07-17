FROM debian:bullseye

RUN apt install -y build-essential git pkg-config automake autoconf libtool libfuse-dev fuse uuid-dev libxml2-dev libsnmp-dev libicu-dev icu-devtools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]