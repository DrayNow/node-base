FROM mhart/alpine-node:10

# Dependencies
RUN apk update && apk upgrade && apk --no-cache add --virtual builds-deps build-base python vim