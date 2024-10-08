


# Vagrant Installation Script for Ubuntu 24

This repository provides a simple bash script to automate the installation of [Vagrant](https://www.vagrantup.com/) on Ubuntu 24. It installs both Vagrant and VirtualBox, which is a provider for running virtual machines.

## What is Vagrant?

[Vagrant](https://www.vagrantup.com/) is a tool for building and managing virtualized development environments. It simplifies the process of setting up a development environment by allowing developers to share configurations using a single, portable `Vagrantfile`. Vagrant is often used with providers like VirtualBox, Docker, or VMware to create reproducible development environments that work on any platform.

### Key Features of Vagrant:
- **Easy Setup:** Spin up pre-configured development environments using a single command.
- **Consistency:** Ensure that all developers work on the same setup, avoiding "it works on my machine" issues.
- **Portability:** Share your environment setup with other team members using a simple `Vagrantfile`.

## Script Overview

This repository contains a bash script (`install_vagrant.sh`) that installs Vagrant on Ubuntu 24 along with VirtualBox as the provider.

### Features of the Script:
- Updates the system package list.
- Installs necessary dependencies like `curl` and `software-properties-common`.
- Installs VirtualBox, a virtualization provider.
- Adds the official HashiCorp repository.
- Installs the latest version of Vagrant.
- Verifies the installation by checking the installed Vagrant version.

## How to Use

### 1. Clone the Repository

```bash
git clone https://github.com/arynishere/Vagrant-installation
cd Vagrant-installation
```

### 2. Make the Script Executable

```bash
chmod +x install_vagrant.sh
```

### 3. Run the Script

```bash
./install_vagrant.sh
```

The script will handle the installation of both VirtualBox and Vagrant, and at the end, it will confirm that Vagrant has been installed correctly.

### Verify Vagrant Installation

After running the script, you can verify that Vagrant has been installed by running:

```bash
vagrant --version
```

This command should output the version of Vagrant that was installed.

## Learn More About Vagrant

To learn more about using Vagrant, check out the [Vagrant documentation](https://www.vagrantup.com/docs).

