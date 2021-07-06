#!/bin/bash -x

mkdir -p Github/myrepo && cd "$_"

# global
git clone https://github.com/deeperlearner/dotfiles
cd dotfiles
./install
cd ..

# local
git clone https://github.com/deeperlearner/dotfiles-local
cd dotfiles-local
./install
