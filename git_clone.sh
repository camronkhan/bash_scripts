#!/bin/bash

# clone git repo
# $1 = user name
# $2 = repo name
# $3 = directory name

GITHUB=https://www.github.com/

if [ -z "$1" || -z "$2" ]; then
  echo "ERROR: GitHub user or repo name not provided."
else
  if [ -z "$3" ]; then
    git clone ${GITHUB}${1}"/"${2}".git" ${3}
  else
    git clone ${GITHUB}${1}"/"${2}".git"
  fi
fi
