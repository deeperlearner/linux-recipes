#!/bin/bash

# update
sudo apt-get update

# GNOME color
sudo apt install gnome-tweaks

# Python3
sudo apt-get install python3-pip
pip3 install trash-cli virtualenvwrapper

# Github
sudo apt-get install git
pip3 install getgist

# ranger
sudo apt-get install ranger
# pip3 install ueberzug

# cloc
sudo apt-get install cloc

# +---------+
# | jupyter |
# +---------+
pip3 install jupyter

# jupyter-vim-binding (ref: https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation)
# Install IPython-notebook-extensions
pip3 install jupyter_contrib_nbextensions

# Activate the extensions configurator
jupyter nbextensions_configurator enable --user

# Add vim_binding to IPython-notebook-extensions
# You may need the following to create the directoy
mkdir -p $(jupyter --data-dir)/nbextensions
# Now clone the repository
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding

# Activate the extension
# Go to http://localhost:8888/nbextensions/. Activate VIM binding from the list of extensions.

# jupyter-themes (ref: https://github.com/dunovank/jupyter-themes)
pip3 install jupyterthemes
jt -t gruvboxd -vim

# +------+
# | tmux |
# +------+
sudo apt-get install tmux

# tmux-plugins
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh

# +-----+
# | vim |
# +-----+
sudo apt-get install vim

# enable clipboard
sudo apt-get install vim-gtk3

# vim-plug
sudo apt-get install curl
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# CoC
## node.js
curl -sL install-node.now.sh/lts | sudo bash
## language server
### coc-python
sudo apt-get install npm
### pylint
pip3 install jedi pylint

# VIM install plugins
vim +'PlugInstall --sync' +qa
vim +'CocInstall --sync coc-jedi' +qa
