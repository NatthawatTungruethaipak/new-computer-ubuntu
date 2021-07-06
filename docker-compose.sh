#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by Natthawat Tungruethaipak
#######################################

## Download Docker Compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

## Apply executable permissions to the binary
sudo chmod +x /usr/local/bin/docker-compose