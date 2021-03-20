#!/bin/bash

sudo apt install chezscheme

git clone git@github.com:idris-lang/Idris2.git
cd Idris2

make bootstrap SCHEME=chezscheme9.5
make install

cd ..
rm -rf Idris2

