#!/bin/bash

. $HOME/.scripts/is-installed.sh

pr=$(apt_installed git)

if ($pr); then
  echo -n "Git is already installed, want to skip configuration?"
  if !($(confirm)); then
    configure
  fi
else
  configure
fi

if !($(bin_installed bit)) then
  echo -n "Want to install Bit (a modern Git CLI)?"
  if ($(confirm)); then
    if !($(bin_installed go)) then
      echo "Could not find go. Make sure it is installed."
    fi
    gobin=$(go env GOPATH)/bin
    GO111MODULE=on go get github.com/chriswalz/bit@latest;
    bit complete;
    if ($(bin_installed bit)); then
      echo "Succesfully installed Bit."
    fi
  fi
fi

configure() {
  if !($pr); then
    sudo apt install git

    read -p "Enter your (full) name: " -r name
    git config --global user.name "$name"
    read -p "Enter your email: " -r email
    git config --global user.email "$email"
  else
    name=$(git config --get user.name)
    echo -n "Want to change your name ($name)?"
    if $(negate); then
      read -p "Enter new name: " name
      git config --global --replace-all user.name "$name"
    fi

    email=$(git config --get user.email)
    echo -n "Want to change your email ($email)?"
    if $(negate); then
      read -p "Enter new email: " email
      git config --global --replace-all user.email "$email"
    fi
  fi

  echo -n "Want to set vim as your default editor?"
  if $(confirm); then
    git config --global --replace-all core.editor "vim"
  fi

  ignore="$HOME/.gitignore"
  echo "Creating global .gitignore at $ignore."
  git config --global --replace-all core.excludesfile ~/.gitignore
  if [ ! -e "$ignore" ] ; then
      touch "$ignore"
  fi

  echo -n "Want to configure GitHub?"
  if $(confirm); then
    echo -n "Do you use SSH to connect to GitHub?"
    if $(confirm); then
      git config --global --replace-all url."git@github.com:".insteadOf "https://github.com/"
    echo "Testing connection..."
    ssh -T git@github.com
    fi
  fi
}

