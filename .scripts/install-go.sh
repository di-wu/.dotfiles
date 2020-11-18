#!/bin/bash

wget https://golang.org/dl/go1.15.5.linux-amd64.tar.gz -O go1.15.5.tar.gz
tar -C /usr/local -xzf go1.15.5.tar.gz
export PATH=$PATH:/usr/local/go/bin
rm go1.15.5.tar.gz
go version
