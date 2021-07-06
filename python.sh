#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by Natthawat Tungruethaipak
#######################################

## Update packages and Upgrade system
echo '###Update packages'
sudo apt-get update

## Install dependency for pyenv
echo '###Install dependency for pyenv'
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev git liblzma-dev

## Configure your shell's environment for Pyenv
echo "###Configure your shell's environment for Pyenv"
echo "export PYENV_ROOT=\"\$HOME/.pyenv\"
export PATH=\"\$PYENV_ROOT/bin:\$PATH\"
eval \"\$(pyenv init --path)\"
eval \"\$(pyenv virtualenv-init -)\"" | tee -a ~/.profile ~/.bashrc

## Install pyenv
echo '###Install pyenv'
curl https://pyenv.run | bash

## Update your current shell environment
echo '###Update your current shell environment'
source ~/.profile
source ~/.bashrc

## Install python 3.9.5 and set python 3.9.5 to global
echo '###Installing python 3.9.5'
pyenv install 3.9.5
pyenv global 3.9.5

## Upgrade pip
echo '###Upgrade pip'
pip install --upgrade pip