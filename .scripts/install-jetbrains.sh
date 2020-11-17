#!/bin/bash

version=1.18.7455

sudo apt install wget
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-${version}.tar.gz -O toolbox.tar.gz
tar -xzf toolbox.tar.gz

rm toolbox.tar.gz

./jetbrains-toolbox-${version}/jetbrains-toolbox
rm -rf jetbrains-tookbox-${version}
