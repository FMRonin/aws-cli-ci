FROM alpine:3

#========================================
# SAM
#========================================
ENV SAM_VERSION=1.1.0
RUN apk add --no-cache curl && \
    curl -sSLO https://github.com/awslabs/aws-sam-local/releases/download/v${SAM_VERSION}/sam_${SAM_VERSION}_linux_386.tar.gz && \
    tar -C /usr/local/bin -zxvf /sam_${SAM_VERSION}_linux_386.tar.gz && \
    apk del curl && \
    rm -f /sam_${SAM_VERSION}_linux_386.tar.gz

#========================================
# AWS CLI
#========================================
RUN apk add --no-cache py-pip && pip install awscli
