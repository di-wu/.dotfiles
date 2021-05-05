#!/bin/bash

sudo apt update
sudo apt install curl

curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash

source ~/.bashrc
nvm --version
nvm install node
nvm use node
node --version

