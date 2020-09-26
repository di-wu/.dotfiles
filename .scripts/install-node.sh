#!/bin/bash
sudo apt-get install software-properties-common
curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash –

sudo apt-get install nodejs
node -v && npm -v

npm config set prefix ~/.local
