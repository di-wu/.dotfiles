#!/bin/bash

set -xe

sudo apt update
sudo apt upgrade
sudo apt install \
  git \
  vim \
  curl \
  ffmpeg
sudo apt autoremove

