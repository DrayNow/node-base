FROM draynow/node-base

# Install dependencies
RUN apk update && apk upgrade && \
    apk add --no-cache -U \
        build-base \
        udev \
        ttf-freefont \
        util-linux \
        readline-dev \
        openssl-dev \
        zlib-dev \
        libxml2-dev \
        glib-lang \
        wget \
        gnupg \
        unzip \
        ca-certificates \
        chromium && \
    apk --purge del build-base openssl-dev zlib-dev libxml2-dev wget gnupg unzip ca-certificates && \
    yarn global add pm2
