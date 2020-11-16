#!/bin/bash
sudo apt-get update
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

sudo apt-get install -y nodejs npm

echo "Cleaning npm cache:"
sudo npm cache clean -f
sudo npm install -g n
sudo n latest

node -v && npm -v


