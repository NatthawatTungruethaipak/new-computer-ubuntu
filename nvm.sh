#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by Natthawat Tungruethaipak
#######################################

## Install node version manager
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

## Configure your shell's environment for nvm
echo "export NVM_DIR=\"\$HOME/.nvm\"
[ -s \"\$NVM_DIR/nvm.sh\" ] && \. \"\$NVM_DIR/nvm.sh\"
[ -s \"\$NVM_DIR/bash_completion\" ] && \. \"\$NVM_DIR/bash_completion\"" | tee -a ~/.profile ~/.bashrc
