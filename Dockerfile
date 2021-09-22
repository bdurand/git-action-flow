FROM ubuntu:latest

RUN apt-get -y update && \
    rm -rf /var/lib/apt/lists/* && \
    useradd -ms /bin/bash app

ARG REVISION
WORKDIR /app
COPY . ./
RUN echo $REVISION > REVISION
