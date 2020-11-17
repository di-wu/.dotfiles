#!/bin/bash

if [ ! -f /etc/apt/sources.list.d/spotify.list ]; then
    sudo sh -c 'echo "deb http://repository.spotify.com stable non-free" >> /etc/apt/sources.list.d/spotify.list'
fi
sudo apt install curl
curl -sS https://download.spotify.com/debian/pubkey.gpg | sudo apt-key add -

sudo apt update
sudo apt install spotify-client
