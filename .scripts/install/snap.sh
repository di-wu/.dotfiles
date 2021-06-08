#!/bin/bash

# Update all installed snaps.
sudo snap refresh

pkgList=(
  "discord" 
  "slack --classic" 
  "spotify"
  "code --classic" # vscode
  "obs-studio"
  "thunderbird"
)
 
for pkg in "${pkgList[@]}"; do
  name=${pkg%% *}
  if [[ -z $(snap list | grep $name) ]]; then
    read -p "Do you want to install ${name}? " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Yy]$ ]]; then
      sudo snap install $pkg
    fi
  fi
done

