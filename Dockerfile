FROM debian:buster-slim

RUN apt-get update -qq && \
    apt-get install -qqy coreutils python pip python-dev jq apt-transport-https ca-certificates curl gnupg2 software-properties-common && \
    pip install awscli && \
    rm -rf /var/cache/apk/*    
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"    
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"  
RUN apt-get update  -qq \
    && apt-get install docker-ce=17.12.1~ce-0~debian -y      
     
