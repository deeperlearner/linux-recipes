#!/bin/bash -x

# install packages
sudo apt-get update
sudo apt-get install \
    curl git rsync htop \
    python3-pip \
    ssh xrdp \
    vim ranger tmux

# optional packages
sudo apt-get install \
    gnome-tweaks cloc vim-gtk3

# install python packages
pip3 install -r ../requirements/necessary.txt
pip3 install -r ../requirements/optional.txt
