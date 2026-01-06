#!/bin/bash
set -e

echo "===== BeforeInstall ====="

# Install Node.js (Amazon Linux 2023 safe)
curl -fsSL https://rpm.nodesource.com/setup_18.x | bash -
yum install -y nodejs

# Install PM2 globally
npm install -g pm2

# Create app directory
mkdir -p /home/ec2-user/express-app
chown -R ec2-user:ec2-user /home/ec2-user/express-app

echo "===== BeforeInstall completed ====="
