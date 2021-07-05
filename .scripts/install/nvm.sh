#!/bin/bash

set -xe

if [[ ! -d ~/.nvm ]]; then
  v="v0.38.0" # Default version?
  cd ~/
  git clone -q https://github.com/nvm-sh/nvm.git .nvm
  echo "Default version: ${v}."
  read -p "Do you want to use this version? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Nn]$ ]]; then
    read -p "Other nvm version: " v
  fi
else
  source ~/.bashrc
  v="v$(nvm --version)"
  echo "Currently using nvm version ${v}."
  read -p "Do you want to use this version? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    exit
  else
    read -p "Other nvm version: " v
  fi
fi

cd ~/.nvm
git fetch -q --tags
git checkout $v -q
. ./nvm.sh
. ~/.bashrc

