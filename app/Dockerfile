########################
# OS Base Configuraion #
########################
# Set Ubuntu version
ARG UBUNTU_VERSION=20.04
# Download base ubuntu image
FROM ubuntu:${UBUNTU_VERSION}
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
RUN apt update
