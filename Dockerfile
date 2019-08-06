# Set the base image
FROM debian:latest

# Dockerfile author / maintainer 
LABEL maintainer="CoinAlpha, Inc. <dev@coinalpha.com>"

# Build arguments
ARG BRANCH="master"
ARG COMMIT=""
ARG BUILD_DATE=""
LABEL branch=${BRANCH}
LABEL commit=${COMMIT}
LABEL build_date=${BUILD_DATE}

# Create mount points
RUN mkdir /conf && mkdir /logs
VOLUME /conf /logs

# Set env vars
ENV COMMIT_SHA=${COMMIT}
ENV COMMIT_BRANCH=${BRANCH}
ENV BUILD_DATE=${BUILD_DATE}

# Confirm env
RUN printenv
