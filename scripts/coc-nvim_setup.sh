#!/bin/bash -x

# node.js
curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install npm
# jedi
vim +'CocInstall -sync coc-jedi' +qall
