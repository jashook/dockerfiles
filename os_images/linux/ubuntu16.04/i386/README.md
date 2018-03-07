## Overview

This image is used to build the dotnet/coreclr product for x86.

## Building coreclr arm using the container

**Note** that $WORKSPACE in this context is the location of the coreclr repo.

>docker run -i --rm -v $WORKSPACE:/home/dotnet-bot/coreclr -e ROOTFS_DIR=/home/dotnet-bot/rootfs/arm jashook/coreclr-x86-ubuntu-14.04:latest ./coreclr/build.sh checked

## Image location

The latest build of this image can be pulled from dockerhub.

>docker run -it jashook/coreclr-x86-ubuntu-14.04:latest

The source is available on github at https://github.com/jashook/dockerfiles/tree/master/os_images/ubuntu14.04/i386/base/Dockerfile

## Building

>docker build -t jashook/coreclr-x86-ubuntu-14.04:latest .
