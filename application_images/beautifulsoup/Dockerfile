FROM ubuntu:16.04

RUN apt-get update \
    && apt-get install -y \
        python-pip \
    && rm -rf /var/lib/apt/lists/*

RUN pip install progressbar
RUN pip install pymongo
RUN pip install beautifulsoup4