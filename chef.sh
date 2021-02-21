#!/bin/bash

bash -x ./install-packages.sh
bash -x ./get-github-files.sh
bash -x ./setup-environment.sh
bash -x ./link-dotfiles.sh

echo "Ubuntu dishes are cooked! douzo ;)"
