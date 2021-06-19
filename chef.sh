#!/bin/bash

bash -x ./install-packages.sh
bash -x ./setup-vim.sh
bash -x ./setup-tmux.sh
bash -x ./setup-jupyter.sh

echo "Ubuntu dishes are cooked! douzo ;)"
