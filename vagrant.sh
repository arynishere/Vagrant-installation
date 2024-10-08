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
