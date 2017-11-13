FROM docker:17.09

ENV AWSCLI_VERSION "1.11.185"

RUN apk update && apk add \ 
      bash \
      curl \
      less \
      groff \
      jq \
      python \
      py-pip 

RUN pip install --upgrade \
    pip \
    awscli==$AWSCLI_VERSION