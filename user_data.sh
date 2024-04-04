#!/bin/bash
sudo su - << EOF
sudo apt update -y
# Install Git
sudo apt install git -y
git clone https://github.com/vickydevo/simple-node-server-ank.git
cd simple-node-server-ank
sudo apt install npm -y
npm install -g pm2   
npm install
pm2 start index.js
pm2 startup
EOF