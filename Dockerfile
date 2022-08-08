FROM --platform=linux/amd64 alpine:3.16.1

RUN apk --update --no-cache add curl jq bash ca-certificates coreutils

# install azure cli see https://github.com/Azure/azure-cli/issues/19591
RUN apk --no-cache add py3-pip \
    && apk --no-cache add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make \
    && pip install --upgrade pip \
    && pip install azure-cli
