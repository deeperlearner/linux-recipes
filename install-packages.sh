#!/bin/bash

sudo apt-get update
# Python3
sudo apt-get install python3-pip
pip3 install trash-cli virtualenvwrapper

# Github
sudo apt-get install git
pip3 install getgist

# VIM
git clone https://github.com/vim/vim.git
cd vim/src
make
sudo make install
cd ../../
rm -rf vim

# ranger
sudo apt-get install ranger
pip3 install ueberzug

# tmux
sudo apt-get install tmux

# cloc
sudo apt-get install cloc
