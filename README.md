# linux recipes

Install packages and setup environment on Ubuntu.
It is specifically aimed for machine learning development.
Maybe there will be branches in the futrue.

## setup docker

Check `dockerfiles/README.md`.

### executing docker commands as a non-root user

```
sudo usermod -aG docker $USER
```

Some examples of `Dockerfile` are in the submodule `dockerfiles/`.

## setup packages

```
sudo apt-get update
sudo apt-get install \
    curl git rsync htop \
    python3-pip \
    ssh xrdp \
    ranger tmux
```

### install lf (ref: https://github.com/gokcehan/lf)

```
mkdir -p ~/.local/bin
curl -L https://github.com/gokcehan/lf/releases/latest/download/lf-linux-amd64.tar.gz | tar xzC ~/.local/bin
```

### optional packages

```
sudo apt-get install \
    gnome-tweaks cloc vim-gtk3
```

### install python packages

```
pip3 install -r requirements.txt
```

## setup ssh

```
sudo systemctl status ssh
sudo systemctl start ssh
```

### [copy client key to server](notes/copy_key_to_server.md)

### add key to Github

```
ssh-keygen
```
Add `~/.ssh/id_rsa.pub` to [Github settings](https://github.com/settings/keys)

## setup xrdp

```
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
```

## setup jupyter

### install packages

```
pip3 install jupyter jupyter_contrib_nbextensions jupyterthemes
```

### [jupyter-vim-binding](https://github.com/lambdalisue/jupyter-vim-binding/wiki/Installation)

#### Activate the extensions configurator

```
jupyter nbextensions_configurator enable --user
```

#### Add vim_binding to IPython-notebook-extensions

```
mkdir -p $(jupyter --data-dir)/nbextensions
cd $(jupyter --data-dir)/nbextensions
git clone https://github.com/lambdalisue/jupyter-vim-binding vim_binding
chmod -R go-w vim_binding
cd -
```

### [jupyter-themes](https://github.com/dunovank/jupyter-themes)

```
jt -t gruvboxd -vim
```

## setup dotfiles

### global

```
export dotfiles_path=~/Github/myrepo/dotfiles
git clone https://github.com/deeperlearner/dotfiles $dotfiles_path
cd $dotfiles_path
./install
cd -
```

### local

```
export dotfiles_local_path=~/Github/myrepo/dotfiles-local
git clone https://github.com/deeperlearner/dotfiles-local $dotfiles_local_path
cd $dotfiles_local_path
git checkout -t origin/Windows_WSL
./install
cd -
```

## setup vim

### install vim

```
git clone https://github.com/vim/vim --depth 1 ~/Downloads/vim
cd ~/Downloads/vim/src
make distclean
make
sudo make install
cd -
```

### setup [coc.nvim](https://github.com/neoclide/coc.nvim)

```
curl -sL install-node.now.sh/lts | sudo bash
sudo apt-get install npm
vim +'CocInstall -sync coc-jedi' +qall
```

## setup tmux

```
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
~/.tmux/plugins/tpm/scripts/install_plugins.sh
```

## setup python3 virtual environment

```
source ~/.bashrc
mkvirtualenv <env_name>
```
[reference packages](notes/requirements.txt)

## [setup gpu](notes/gpu_setup.md)

## Acknowledgements

This project is inspired by Anish's repository [linux-bootstrap](https://github.com/anishathalye/linux-bootstrap)
