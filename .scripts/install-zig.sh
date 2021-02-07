#!/bin/bash

wget https://ziglang.org/download/0.7.1/zig-linux-x86_64-0.7.1.tar.xz -O zig-0.7.1.tar.xz
sudo tar -C /usr/local -xf zig-0.7.1.tar.xz
sudo mv /usr/local/zig-linux-x86_64-0.7.1 /usr/local/zig
export PATH=$PATH:/usr/local/zig
rm zig-0.7.1.tar.xz
zig version

