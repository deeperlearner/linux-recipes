#!/bin/bash -x

# install packages
sudo apt-get update
sudo apt-get install \
    curl git rsync htop \
    python3-pip \
    ssh xrdp \
    vim ranger tmux

# install lf (ref: https://github.com/gokcehan/lf)
curl -L https://github.com/gokcehan/lf/releases/latest/download/lf-linux-amd64.tar.gz | tar xzC ~/.local/bin

# optional packages
sudo apt-get install \
    gnome-tweaks cloc vim-gtk3

# install python packages
pip3 install -r requirements.txt
