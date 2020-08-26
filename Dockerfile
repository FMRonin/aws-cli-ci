FROM alpine:3

#========================================
# SAM
#========================================
ENV SAM_VERSION=1.1.0
RUN apk add --no-cache curl && \
    curl -sSLO https://github.com/aws/aws-sam-cli/releases/download/v${SAM_VERSION}/aws-sam-cli-${SAM_VERSION}.x86_64_linux.bottle.tar.gz && \
    tar -C /usr/local/bin -zxvf /aws-sam-cli-${SAM_VERSION}.x86_64_linux.bottle.tar.gz && \
    apk del curl && \
    rm -f /sam_${SAM_VERSION}.x86_64_linux.bottle.tar.gz

#========================================
# AWS CLI
#========================================
RUN apk add --no-cache py-pip && pip install awscli
