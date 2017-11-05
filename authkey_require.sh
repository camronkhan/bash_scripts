#!/bin/bash

# configure authentication
# execute as non-root sudoer

# copy public key from local machine to server
PUBKEY=$1

mkdir -p ~/.ssh

chmod 700 ~/.ssh

cp $PUBKEY ~/.ssh/authorized_keys

chmod 600 ~/.ssh/authorized_keys

# requires ssh server
sudo apt-get install -y openssh-client openssh-server

# update sshd to restrict pw authentication
FILENAME=/etc/ssh/sshd_config

sudo chmod 666 $FILENAME

sudo echo "PasswordAuthentication no" >> $FILENAME

sudo chmod 644 $FILENAME

sudo systemctl reload sshd
