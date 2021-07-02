FROM ubuntu:18.04
RUN apt-get update && apt-get install -y \
    curl \
    git \
    python3-pip \
    vim \
    ranger \
    tmux

COPY ../requirements/necessary.txt /tmp/
RUN pip install -r /tmp/necessary.txt
COPY . /tmp/
