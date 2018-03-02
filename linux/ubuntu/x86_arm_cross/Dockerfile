FROM jashook/coreclr-arm-cross

# Install coreclr dependencies
RUN apt-get update && \
    apt-get install -y apt-utils && \
    apt-get install -y \
        cmake \
        llvm-3.9 \
        clang-3.9 \
        lldb-3.9 \
        liblldb-3.9-dev \
        libunwind8 \
        libunwind8-dev \
        gettext \
        libicu-dev \
        liblttng-ust-dev \
        libcurl4-openssl-dev \
        libssl-dev \
        uuid-dev \
        libnuma-dev \
        libkrb5-dev \
        binfmt-support

# Create home directory
RUN mkdir -p /home/dotnet-bot/rootfs

# Populate the directory with the rootfs.
ADD https://clrjit.blob.core.windows.net/docker/x86_rootfs.tar.gz /home/dotnet-bot/rootfs

RUN tar xzvf /home/dotnet-bot/rootfs/x86_rootfs.tar.gz -C /home/dotnet-bot/rootfs

# Setup mount point for coreclr
RUN mkdir -p /home/dotnet-bot/coreclr

WORKDIR /home/dotnet-bot
CMD bash
