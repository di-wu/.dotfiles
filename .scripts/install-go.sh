#!/bin/bash

wget https://golang.org/dl/go1.16.linux-amd64.tar.gz -O go1.16.tar.gz
tar -C /usr/local -xzf go1.16.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.16.tar.gz
go version

