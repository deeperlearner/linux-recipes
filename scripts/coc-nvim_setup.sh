#!/usr/bin/env bash

# node.js
curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install npm
# pylint
pip3 install jedi pylint
# jedi
vim +'CocInstall -sync coc-jedi' +qall
