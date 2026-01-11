#!/bin/bash
set -e

echo "===== BeforeInstall ====="

# Install Node.js (Ubuntu safe)
curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt update
sudo apt install -y nodejs


# Install PM2 globally
npm install -g pm2

# Create app directory
mkdir -p /home/ubuntu/express-app
chown -R ubuntu:ubuntu /home/ubuntu/express-app

echo "===== BeforeInstall completed ====="
