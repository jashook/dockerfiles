FROM ubuntu:16.04

# Install coreclr dependencies
RUN apt-get update && \
    dpkg --add-architecture armhf && \
    apt-get update && \
    apt-get install -y \
        libstdc++6:armhf \
        libunwind8:armhf \
        libunwind8-dev:armhf \
        libicu-dev:armhf \
        liblttng-ust-dev:armhf \
        libcurl4-openssl-dev:armhf \
        libicu-dev:armhf \
        libssl-dev \
        libkrb5-dev:armhf

# Create home directory
RUN mkdir -p /home/dotnet-bot/rootfs

# Setup mount point for coreclr
RUN mkdir -p /home/admin/coreclr

WORKDIR /home/admin
CMD bash
