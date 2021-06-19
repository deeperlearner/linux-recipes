#!/bin/bash

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
