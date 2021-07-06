#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by Natthawat Tungruethaipak
#######################################

## Uninstall old versions
sudo apt-get remove docker docker-engine docker.io containerd runc

## Update the apt package index
sudo apt-get update

## Install packages
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

## Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

## Verify that you now have the key
sudo apt-key fingerprint 0EBFCD88

## Add the stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

## Update the apt package index again according to official site
sudo apt-get update

## Install the latest version of Docker
sudo apt-get install -y \
    docker-ce \
    docker-ce-cli \
    containerd.io

## Add the docker group if it doesn't already exist
sudo groupadd docker

## Add the connected user "$USER" to the docker group
sudo gpasswd -a $USER docker