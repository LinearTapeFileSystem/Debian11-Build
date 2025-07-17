FROM debian:bullseye

RUN apt update && apt install -y build-essential git pkg-config automake autoconf libtool libfuse-dev fuse uuid-dev libxml2-dev libsnmp-dev libicu-dev icu-devtools

COPY entrypoint.sh /entrypoint.sh
COPY icu-config /usr/bin/icu-config

ENTRYPOINT ["/entrypoint.sh"]