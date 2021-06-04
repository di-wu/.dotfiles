#!/bin/bash

# Load bash aliases.
if [ -f ~/.bash_aliases ]; then
  . ~/.bash_aliases
fi

# Load bash prompt.
if [ -f ~/.bash_prompt ]; then
  . ~/.bash_prompt
fi

# Node Version Manager
if [ -d ~/.nvm ]; then
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
fi

