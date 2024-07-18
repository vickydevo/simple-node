# DOWNLOAD code TO HOST SERVER and change directory to index.js
 ```
 git clone https://github.com/vickydevo/simple-node.git
 cd simple-node
```
# install node package manger (npm) and node process manager (pm2)
```
sudo apt install npm -y
npm install -g pm2
```
# Download dependencies
 Node Package Manager (npm) to install dependencies for a Node.js project. 
When you run npm install in your project directory, npm reads the package.json file in that directory
to determine which packages (dependencies) need to be installed.
```
npm install
```
# Run application even after closing client
```
pm2 start index.js

```
 - Alternate commands
  ```
  node index.js
  node iptask.js
  or
  npm start
  npm run run-iptask
  ```
 - View list of running processes  and View logs of all processes
```
pm2 list         
pm2 logs        
```
# Run application  # forever #stop #delete
```
pm2 startup  
pm2 stop 0
pm2 delete <index-num>
```
# reload application after code is changed
```
pm2 reload index
```
# startup file execute permission
```
chmod +x startup.sh
```
# add user data while creating image
#!/bin/bash
/home/ubuntu/startup.sh
# node index.js
application starts running check with localhost:port or publicIPv4:port
if you are using ec2 then white list port in security group
