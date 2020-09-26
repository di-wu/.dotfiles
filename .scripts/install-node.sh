#!/bin/bash
sudo apt-get update
sudo apt-get install software-properties-common
curl -sL https://deb.nodesource.com/setup_14.x | sudo -E bash –

sudo apt-get install nodejs npm
node -v && npm -v

npm config set prefix ~/.local
npm install -g cowsay
cowsay nodejs and npm are installed
