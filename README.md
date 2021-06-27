# linux bootstrap
My main linux version is Ubutnu

## packages
### install packages
```
sudo apt-get update
sudo apt-get install \
    curl git ssh rsync \
    vim ranger tmux \
    htop \
    python3-pip
```
#### optional packages
```
sudo apt-get install \
    gnome-tweaks cloc vim-gtk3
```
### setup ssh
#### [add client key to ssh server](add_ssh_key.md)
#### add key to Github
```
ssh-keygen
```
Add `~/.ssh/id_rsa.pub` to [Github settings](https://github.com/settings/keys)

### setup vim
```
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
#### CoC
```
# node.js
curl -sL install-node.now.sh/lts | sudo bash
# language server
## coc-python
sudo apt-get install npm
## pylint
pip3 install jedi pylint

# install plugins in .vimrc
vim +'PlugInstall --sync' +qa
vim +'CocInstall --sync coc-jedi' +qa
```
### setup tmux
```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```
### install python3 packages
```
pip3 install trash-cli
```
#### optional packages
```
pip3 install virtualenvwrapper getgist \
    jupyter jupyter_contrib_nbextensions jupyterthemes \
    ueberzug
```
### setup jupyter
#### [jupyter-vim-binding](https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation)
##### Activate the extensions configurator
```
jupyter nbextensions_configurator enable --user
```
##### Add vim_binding to IPython-notebook-extensions
```
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding
```
#### [jupyter-themes](https://github.com/dunovank/jupyter-themes)
```
jt -t gruvboxd -vim
```

## install dotfiles
```
mkdir -p Github/myrepo/public && cd "$_"
# global
git clone https://github.com/deeperlearner/dotfiles
cd dotfiles
./install
cd ..
# local
git clone https://github.com/deeperlearner/dotfiles-local
cd dotfiles-local
./install
# private
git clone git@github.com:deeperlearner/dotfiles-private
cd dotfiles-private
./install
```

## [gpu setup](gpu_setup.md)

## Acknowledgements
This project is inspired by Anish's [repository](https://github.com/anishathalye/linux-bootstrap)
