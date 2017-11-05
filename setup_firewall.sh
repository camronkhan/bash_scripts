#!/bin/bash

# install ufw if not present
sudo apt-get install -y ufw

# setup default policies
sudo ufw default deny incoming
sudo ufw default allow outgoing

# allow ssh
sudo ufw allow ssh

# allow ftp / sftp
sudo ufw allow ftp
sudo ufw allow sftp

# allow http / https
sudo ufw allow http
sudo ufw allow https

# enable ufw
sudo ufw enable

# get status
sudo ufw status verbose