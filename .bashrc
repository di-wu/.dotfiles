#!/bin/bash

# Load bash aliases.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load bash prompt.
if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

# Load bash path(s).
if [ -f ~/.bash_path ]; then
  . ~/.bash_path
fi

# Node Version Manager
if [ -d ~/.nvm ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

# DFINITY Canister SDK
# Opt-out of having data collected about dfx usage.
if [ -f ~/bin/dfx ]; then
  export DFX_TELEMETRY_DISABLED=1
  alias moc="$(~/bin/dfx cache show)/moc --package base $(~/bin/dfx cache show)/base"
fi

# Nix
if [ -d /nix ]; then
  . /home/quint/.nix-profile/etc/profile.d/nix.sh
fi

