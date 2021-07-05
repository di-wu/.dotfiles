#!/bin/bash

set -xe

version=1.16.5
wget -q https://golang.org/dl/go$version.linux-amd64.tar.gz -O go$version.tar.gz
sudo tar -C /usr/local -xzf go$version.tar.gz
rm go$version.tar.gz

. ~/.bashrc
go version

