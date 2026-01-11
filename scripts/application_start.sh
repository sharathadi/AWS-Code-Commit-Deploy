#!/bin/bash
set -e

echo "===== ApplicationStart ====="

cd /home/ubuntu/express-app

# Install dependencies
npm install

# Start app using PM2
pm2 start app.js --name app

# Save PM2 process list
pm2 save

echo "===== ApplicationStart completed ====="
