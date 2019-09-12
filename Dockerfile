FROM debian:buster-slim

RUN apt-get update && \
    apt-get install -y coreutils python py-pip python-dev jq && \
    pip install awscli && \
    rm -rf /var/cache/apk/*
