#!/bin/bash

sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"
. ~/.bashrc
dfx cache install

# Installed in: Installed ~/bin/dfx
# Uninstall: ~/.cache/dfinity/uninstall.sh
# Directories: ~/.config/dfx and ~/.cache/dfinity

