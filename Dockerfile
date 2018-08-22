FROM mhart/alpine-node:8.9

# Dependencies
RUN apk --no-cache add --virtual builds-deps build-base python