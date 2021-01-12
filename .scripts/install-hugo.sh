#!/bin/bash

mkdir ~/src
cd ~/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended

