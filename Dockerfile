FROM docker:18.06

ENV AWSCLI_VERSION "1.16.8"

RUN apk -v --no-cache add \ 
      bash \
      curl \
      git \
      openssh-client \
      less \
      groff \
      jq \
      python \
      py-pip 

RUN pip install --upgrade --no-cache-dir \
    awscli==$AWSCLI_VERSION
