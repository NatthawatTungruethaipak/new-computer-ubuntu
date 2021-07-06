#!/bin/bash/
#######################################
# Bash script to install apps on a new system (Ubuntu)
# Written by Natthawat Tungruethaipak
#######################################

## Update packages and Upgrade system
echo '###Update packages'
sudo apt-get update

## Install samba
echo '###Install samba'
sudo apt install -y samba

## Make directory for sambashare
echo '###Creating the directory'
mkdir "/home/$SUDO_USER/sambashare"


### Add configuration to the end of the file
echo '###Config file'
echo "[sambashare]
    comment = Samba on Ubuntu
    path = /home/$SUDO_USER/sambashare
    read only = no
    browsable = yes" >> "/etc/samba/smb.conf"

###Restart the service
echo '###Restart the service'
sudo service smbd restart

###Allow the samba to the ufw
echo '###Allow the samba to the ufw'
sudo ufw allow samba

### Username used must belong to a system account, else it won’t save.
echo '###Adding user'
sudo smbpasswd -a $SUDO_USER 