FROM debian:bullseye

# Debian 11 (bullseye) reached end of life; its packages moved to archive.debian.org.
RUN sed -i 's|http://deb.debian.org|http://archive.debian.org|g' /etc/apt/sources.list && \
    echo 'Acquire::Check-Valid-Until "false";' > /etc/apt/apt.conf.d/99archive

RUN apt update && apt install -y build-essential git pkg-config automake autoconf libtool libfuse-dev fuse uuid-dev libxml2-dev libsnmp-dev libicu-dev icu-devtools

COPY entrypoint.sh /entrypoint.sh
COPY icu-config /usr/bin/icu-config

ENTRYPOINT ["/entrypoint.sh"]
