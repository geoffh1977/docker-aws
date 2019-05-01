# Build AWS Cli Container
ARG IMAGE_USER=geoffh1977
ARG IMAGE_NAME=python3
ARG IMAGE_VERSION=latest

FROM ${IMAGE_USER}/${IMAGE_NAME}:${IMAGE_VERSION}
LABEL maintainer="geoffh1977 <geoffh1977@gmail.com>"
USER root

# Install Build and Support packages - Remove Build packages
# hadolint ignore=DL3013,DL3018
RUN apk -U --no-cache add groff less jq bash make && \
    pip3 install --upgrade --no-cache-dir sceptre troposphere awscli && \
    # apk --no-cache del python3-dev automake libtool gcc gcc-objc autoconf && \
    mkdir /project && \
    chown "${ALPINE_USER}":"${ALPINE_USER}" /project

VOLUME ["/project"]
WORKDIR /project
USER ${ALPINE_USER}
