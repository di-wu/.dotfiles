#!/bin/bash

sudo apt update
sudo apt install curl
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

sudo apt install nodejs npm

echo "Cleaning npm cache:"
sudo npm cache clean -f
sudo npm install -g n
sudo n latest

node -v && npm -v


