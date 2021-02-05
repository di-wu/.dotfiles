#!/bin/bash

sh -ci "$(curl -fsSL https://sdk.dfinity.org/install.sh)"

wget https://download.dfinity.systems/motoko/0.5.4/x86_64-linux/motoko-0.5.4.tar.gz
tar -xf motoko-0.5.4.tar.gz -C ~/bin
rm motoko-0.5.4.tar.gz

wget --output-document ~/bin/vessel https://github.com/kritzcreek/vessel/releases/download/v0.5.1/vessel-linux64
chmod +x ~/bin/vessel

