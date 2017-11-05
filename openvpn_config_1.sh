#!/bin/bash

# configure openvpn

# install packages
sudo apt-get install -y openvpn easy-rsa

# copy the easy-rsa template directory into home directory 
make-cadir ~/openvpn-ca

# OPTIONAL
# edit following lines in ~/openvpn-ca/vars
# -------------------------------------
# export KEY_COUNTRY="US"
# export KEY_PROVINCE="CA"
# export KEY_CITY="SanFrancisco"
# export KEY_ORG="Fort-Funston"
# export KEY_EMAIL="me@myhost.mydomain"
# export KEY_OU="MyOrganizationalUnit"
# . . .
# export KEY_NAME="EasyRSA"
# -------------------------------------

echo "Run the following 4 commands:"
echo "(1) cd ~/openvpn-ca"
echo "(2) source vars"
echo "(3) ./clean-all"
echo "(4) ./build-ca"
echo "(5) "