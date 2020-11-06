FROM docker:19.03

ENV AWSCLI_VERSION "1.18.172"

RUN apk -v --no-cache add \
      bash \
      curl \
      git \
      openssh-client \
      less \
      groff \
      jq \
      python3 \
      py-pip

RUN pip install --upgrade --no-cache-dir \
    awscli==$AWSCLI_VERSION
