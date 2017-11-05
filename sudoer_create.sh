#!/bin/bash

# create new sudo user
# must be root user

if [ -z "$1" ]; then
  echo "ERROR: No username provided. Exiting."
else
  adduser $1
  usermod -aG sudo $1
  su - $1
fi
