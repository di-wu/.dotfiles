#!/bin/bash

# Update all installed snaps.
sudo snap refresh

pkgList=(
  "discord" 
  "slack --classic" 
  "spotify"
)
 
for pkg in "${pkgList[@]}"; do
  if [[ -z $(snap list | grep ${pkg%% *}) ]]; then
    read -p "Do you want to install ${pkg}? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      sudo snap install $pkg
    fi
  fi
done

