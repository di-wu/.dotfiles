#!/bin/bash
# Install Terraform v0.13.2

version=0.13.2

mkdir -p ~/bin

wget https://releases.hashicorp.com/terraform/${version}/terraform_${version}_linux_amd64.zip -O terraform.zip
unzip terraform.zip
rm terraform.zip
mv terraform ~/bin
terraform version

