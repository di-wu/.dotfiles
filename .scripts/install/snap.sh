#!/bin/bash

# Update all installed snaps.
sudo snap refresh

# Install Discord if not installed already.
if [[ $(snap list | grep discord) == 0 ]]; then
  read -p "Do you want to install Discord? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo snap install discord
  fi
fi

# Install Slack if not installed already.
if [[ $(snap list | grep slack) == 0 ]]; then
  read -p "Do you want to install Slack? " -n 1 -r
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    sudo snap install slack --classic
  fi
fi

