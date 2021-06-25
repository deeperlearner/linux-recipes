# Ubuntu-Recipe
This recipe is an automated procedures that install packages and setup coding environment.

# Steps
1. `git clone https://github.com/deeperlearner/dotfiles`
1. `git clone https://github.com/deeperlearner/dotfiles-local`
1. Edit private local changes:
    - `~/.bashrc`
    - `~/.ssh/config`
1. Run `bash -x ./chef.sh`
1. The yammy dishes will be made with procedures. :)

# TODO
- implement `Dockerfile`
- transfor `Dockerfile` into `Dockerfile.sh` by `docker_to_sh.sh`
    1. `git submodule add https://github.com/deeperlearner/dockerfile-to-shell-script`
    1. `./dockerfile-to-shell-script/docker_to_sh.sh`
