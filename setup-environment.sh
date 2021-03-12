#!/bin/bash

#######################
#         VIM         #
#######################
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

########################
#         tmux         #
########################
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh
