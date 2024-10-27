#!/bin/bash

# Update system packages
echo "Updating system packages..."
sudo apt-get update

# Install dependencies
echo "Installing dependencies..."
sudo apt-get install -y curl apt-transport-https ca-certificates software-properties-common

# Install VirtualBox
echo "Installing VirtualBox..."
sudo apt-get install -y virtualbox

# Add HashiCorp GPG key
echo "Adding HashiCorp GPG key..."
curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

# Add HashiCorp repository
echo "Adding HashiCorp repository..."
sudo add-apt-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

# Update package list again after adding new repo
echo "Updating package list..."
sudo apt-get update

# Install Vagrant
echo "Installing Vagrant..."
sudo apt-get install -y vagrant

# Verify the installation
echo "Verifying Vagrant installation..."
vagrant --version

echo "Vagrant installation complete!"

echo " install vritual box ..."

sleep 3


echo "deb [arch=amd64] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | sudo tee /etc/apt/sources.list.d/virtualbox.list
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add -
sudo apt update
sudo apt install -y virtualbox-7.0
wget -q https://download.virtualbox.org/virtualbox/7.0.8/Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack
sudo VBoxManage extpack install Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack
rm Oracle_VM_VirtualBox_Extension_Pack-7.0.8.vbox-extpack

