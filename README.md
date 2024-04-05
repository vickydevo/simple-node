# DOWNLOAD code TO HOST SERVER and change directory to index.js
 git clone https://github.com/vickydevo/simple-node.git
 cd simple-node
# install npm and node process manager (pm2)
sudo apt install npm -y
npm install -g pm2
npm install
# Run application even after closing client
pm2 start index.js
pm2 list         # View list of running processes
pm2 logs         # View logs of all processes
# Run application  # forever #stop #delete
pm2 startup  
pm2 stop 0
pm2 delete index
# reload application after code is changed
pm2 reload index
# startup file execute permission
chmod +x startup.sh
# add user data while creating image
#!/bin/bash
/home/ubuntu/startup.sh
# node index.js
application starts running check with localhost:port or publicIPv4:port
if you are using ec2 then white list port in security group