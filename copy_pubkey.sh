#!/bin/bash

# copy public key from local machine to server
# execute as non-root sudoer

PUBKEY=$1

mkdir -p ~/.ssh

chmod 700 ~/.ssh

echo $PUBKEY > ~/.ssh/authorized_keys

chmod 600 ~/.ssh/authorized_keys