FROM docker:17.12

ENV AWSCLI_VERSION "1.14.44"

RUN apk --no-cache add \ 
      bash \
      curl \
      git \
      openssh \
      less \
      groff \
      jq \
      python \
      py-pip 

RUN pip install --upgrade \
    pip \
    awscli==$AWSCLI_VERSION
