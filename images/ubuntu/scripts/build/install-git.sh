#!/bin/bash -e
################################################################################
##  File:  install-git.sh
##  Desc:  Install Git 2.50.1 from source and Git-FTP
################################################################################

# Source the helpers for use with the script
source $HELPER_SCRIPTS/install.sh

## Install dependencies for Git from source
sudo apt update
sudo apt install -y wget make gcc libcurl4-openssl-dev libexpat1-dev gettext libz-dev

# Download Git 2.50.1 tarball
wget https://github.com/git/git/archive/refs/tags/v2.50.1.tar.gz -O git-2.50.1.tar.gz

# Extract the tarball
tar -xvzf git-2.50.1.tar.gz

# Navigate to the extracted Git directory
cd $(ls -d git-*/ | head -n 1)

# Compile and Install Git from source
sudo make prefix=/usr/local all
sudo make prefix=/usr/local install

# Install Git-FTP
sudo apt-get install -y git-ftp

# Clean up the tarball
rm -f git-2.50.1.tar.gz

# Document the installed Git version and dependencies
git --version

# Add SSH keys for known hosts
echo "Adding GitHub and Azure SSH keys to known_hosts..."
ssh-keyscan -t rsa,ecdsa,ed25519 github.com >> /etc/ssh/ssh_known_hosts
ssh-keyscan -t rsa ssh.dev.azure.com >> /etc/ssh/ssh_known_hosts


invoke_tests "Tools" "Git"
