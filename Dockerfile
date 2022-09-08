# Container image that runs your code
FROM alpine:3.16

RUN apk add --no-cache \
    bash \
    curl \
    git \
    jq \
    openssh-client \
    python3 \
    py3-pip \
    py3-setuptools \
    py3-wheel \
    && pip3 install --upgrade pip \
    && pip3 install --upgrade awscli
    terraform \

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]