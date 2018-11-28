FROM draynow/node-base

# Important!  Update this no-op ENV variable when this Dockerfile
# is updated with the current date. It will force refresh of all
# of the base images and things like `apt-get update` won't be using
# old cached versions when the Dockerfile is built.
ENV REFRESHED_AT=2016-08-30 \
    LANG=en_US.UTF-8 \
    TERM=xterm

# Specify pgweb version
ENV PGWEB_VERSION=0.9.12 \
    PGWEB_USER=pgweb \
    PGWEB_DIR=/app/pgweb

# Install dependencies
RUN apk update && \
    apk add --no-cache build-base \
        chromium-chromedriver \
        udev \
        ttf-freefont \
        chromium \
        readline-dev \
        openssl-dev \
        zlib-dev \
        libxml2-dev \
        glib-lang \
        wget \
        gnupg \
        unzip \
        ca-certificates && \
    wget https://github.com/sosedoff/pgweb/releases/download/v$PGWEB_VERSION/pgweb_linux_amd64.zip -O /tmp/pgweb-$PGWEB_VERSION.zip && \
    mkdir -p $PGWEB_DIR && \
    unzip /tmp/pgweb-$PGWEB_VERSION.zip -d $PGWEB_DIR && \
    apk --purge del build-base openssl-dev zlib-dev libxml2-dev wget gnupg unzip ca-certificates && \
    rm -r /tmp/pgweb-$PGWEB_VERSION.zip /var/cache/apk/*
