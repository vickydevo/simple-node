#!/bin/bash

# Install pm2 globally (if not already installed)
sudo apt install npm -y
npm install -g pm2
npm install

# Start the Node.js application using pm2
pm2 start /root/simple-node/index.js
pm2 startup