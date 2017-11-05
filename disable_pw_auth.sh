#!/bin/bash

# disable password authentication
# WARNING: public key must be installed or access will be lost

# requires ssh server to be installed
sudo apt-get install -y openssh-client openssh-server

# update sshd to restrict pw authentication
FILENAME=/etc/ssh/sshd_config

sudo chmod 666 $FILENAME

sudo echo "PasswordAuthentication no" >> $FILENAME

sudo chmod 644 $FILENAME

sudo systemctl reload sshd