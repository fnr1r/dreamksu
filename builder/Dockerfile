FROM ubuntu:latest
ENV DEBIAN_FRONTEND=noninteractive
RUN apt update && apt install -y \
    git \
    sudo \
    bc binutils bison build-essential dwarves flex gcc gnupg2 gzip libelf-dev libncurses5-dev libssl-dev make openssl pahole perl-base rsync tar xz-utils \
    && apt autopurge -y && rm -rf /var/lib/{apt,dpkg,cache,log}/
COPY sudoers /etc/sudoers.d/default
#RUN rm /usr/bin/sh && ln -s /usr/bin/bash /usr/bin/sh
USER ubuntu
RUN \
    git config --global user.email "root@localhost" && \
    git config --global user.name "fnrir"
WORKDIR /app
