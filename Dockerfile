########################
# OS Base Configuraion #
########################
# Set Ubuntu version
ARG UBUNTU_VERSION=20.04
# Download base ubuntu image
FROM ubuntu:${UBUNTU_VERSION} as base
# Set label information about the image
LABEL maintainer="IOG Education Team"
LABEL version="0.1"
LABEL description="Docker image for the 4th. cohort of the Plutus Pioneers Program"
# Disable Prompt During Packages Installation
ARG DEBIAN_FRONTEND=noninteractive
# Create a working directory
RUN mkdir -p /app/src
# Set the root working directory
WORKDIR /app

#############################
# Dependencies Installation #
#############################
# Update Ubuntu Software repository
RUN apt-get update -y
# Install development dependencies
RUN apt-get install -y \
  curl \
  xz-utils \
  automake \
  build-essential \
  g++\
  git \
  jq \
  libicu-dev \
  libffi-dev \
  libgmp-dev \
  libncursesw5 \
  libpq-dev \
  libssl-dev \
  libsystemd-dev \
  libtinfo-dev \
  libtool \
  make \
  pkg-config \
  tmux \
  wget \
  zlib1g-dev libreadline-dev llvm libnuma-dev \
  && rm -rf /var/lib/apt/lists/*
