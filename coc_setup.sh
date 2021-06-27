#!/bin/bash
# reference: https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim#automation-script

set -o nounset    # error when referencing undefined variable
set -o errexit    # exit when command fails

# node.js
curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install npm
# pylint
pip3 install jedi pylint
# install plugins in .vimrc
vim +'PlugInstall --sync' +qa
vim +'CocInstall --sync coc-jedi' +qa
