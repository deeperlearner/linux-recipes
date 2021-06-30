# linux bootstrap
Install packages and setup my coding environment on Ubuntu.

## install packages

```
sudo apt-get update
sudo apt-get install \
    curl git rsync \
    python3-pip \
    ssh xrdp \
    vim ranger tmux \
    htop
```

### optional packages

```
sudo apt-get install \
    gnome-tweaks cloc vim-gtk3
```

## install python3 packages

```
pip3 install trash-cli
```

### optional packages

```
pip3 install virtualenvwrapper getgist \
    jupyter jupyter_contrib_nbextensions jupyterthemes \
    ueberzug
```

## [setup jupyter](jupyter_setup.md)

## setup daemons

### ssh

#### setup

```
sudo systemctl status ssh
sudo systemctl start ssh
```

#### [add client key to ssh server](add_ssh_key.md)

#### add key to Github

```
ssh-keygen
```
Add `~/.ssh/id_rsa.pub` to [Github settings](https://github.com/settings/keys)

### docker

#### [setup](https://docs.docker.com/engine/install/ubuntu/)

#### executing docker commands as a non-root user

```
sudo usermod -aG docker $USER
```

### xrdp

```
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
```

## install dotfiles

```
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
```

## setup vim

### setup [coc.nvim](https://github.com/neoclide/coc.nvim)

```
# node.js
curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install npm
# pylint
pip3 install jedi pylint
# jedi
vim +'CocInstall -sync coc-jedi' +qall
```

## setup tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```

## setup python3 virtual environment
```
mkvirtualenv <env_name>
```
[some ref packages](requirments.txt)

## [setup gpu](gpu_setup.md)

## Acknowledgements

This project is inspired by Anish's [repository](https://github.com/anishathalye/linux-bootstrap)
