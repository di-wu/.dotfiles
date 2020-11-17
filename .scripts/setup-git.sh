#!/bin/bash

sudo apt install git

echo Git Name \(e.g. John Doe\):
read name
git config --global user.name $name

echo Git Email \(e.g. john@example.com\):
read email
git config --global user.email $email

git config --global core.excludesfile ~/.gitignore
git config --global --add url."git@github.com:".insteadOf "https://github.com/"

git config --list --show-origin

ssh -T git@github.com
