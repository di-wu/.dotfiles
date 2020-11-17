#!/bin/bash

sudo apt install wget
sudo apt install gnupg
wget -qO - https://www.mongodb.org/static/pgp/server-4.4.asc | sudo apt-key add -

if [ ! -f /etc/apt/sources.list.d/mongodb-org-4.4.list ]; then
    echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/4.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-4.4.list
fi

sudo apt update
sudo apt install mongodb-org

