FROM draynow/node-base

# Install dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache -U \
        build-base \
        udev \
        util-linux \
        readline-dev \
        openssl-dev \
        zlib-dev \
        libxml2-dev \
        glib-lang \
        wget \
        gnupg \
        unzip \
        ca-certificates && \
    apk --purge del build-base openssl-dev zlib-dev libxml2-dev wget gnupg unzip ca-certificates && \
    yarn global add pm2

RUN apk update && apk upgrade \
    && echo @edge http://nl.alpinelinux.org/alpine/edge/community >> /etc/apk/repositories \
    && echo @edge http://nl.alpinelinux.org/alpine/edge/main >> /etc/apk/repositories \
    && apk add --no-cache \
    chromium@edge \
    nss@edge \
    && rm -rf /var/lib/apt/lists/* \
    /var/cache/apk/* \
    /usr/share/man \
    /tmp/*
