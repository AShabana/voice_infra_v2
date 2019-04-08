FROM alpine:latest

RUN apk add --update \
        python \
        python-dev \
        py-pip \
        build-base \
        libffi-dev \
        openssl-dev \
        && pip install cffi \
        && pip install ansible \
        && rm -rf /var/cache/apk/*

CMD ["ansible"]
