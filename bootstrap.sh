#!/bin/bash
set -e

echo "Starting bootstrap script..."

# Update package lists and upgrade packages
echo "Updating packages..."
sudo apt-get update -y
sudo apt-get upgrade -y

# Install common utilities
echo "Installing essential packages..."
sudo apt-get install -y \
    git \
    curl \
    wget \
    vim \
    htop \
    build-essential \
    ufw

# Setup firewall
echo "Configuring UFW firewall..."
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw allow ssh
sudo ufw --force enable

# Create a projects directory
echo "Creating projects directory..."
mkdir -p /home/vagrant/projects
chown -R vagrant:vagrant /home/vagrant/projects

# Set timezone (optional)
echo "Setting timezone to UTC..."
sudo timedatectl set-timezone UTC

echo "Bootstrap completed successfully."

