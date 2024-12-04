# DOWNLOAD code TO HOST SERVER and change directory to index.js
 ```
 git clone https://github.com/vickydevo/simple-node.git
 cd simple-node
```
# install node package manger (npm) 
```
sudo apt install npm -y
```
# If not installed, download and install Node.js from Node.js official site.
    https://nodejs.org/en/download/package-manager

# node process manager (pm2)
```
npm install -g pm2
```


# Install Dependencies
 Use npm to install project dependencies specified in the package.json file:

```
npm install
```
# Run the Application
   - Start the application using PM2 to keep it running even after closing the terminal:

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

# View Running Processes:
```
pm2 list
```
- View Logs of All Processes:
```
pm2 logs
```
- Stop, Delete, or Reload Processes:
```
pm2 stop <process-id>
pm2 delete <process-id>
```
- reload application after code is changed
```
pm2 reload index
```

# Run application  # forever #stop #delete
```
pm2 startup  
pm2 stop 0
pm2 delete <index-num>
```

# startup file execute permission
```
chmod +x startup.sh
```
# Access the Application
Check the application status by accessing the URL in your browser:
For local setups:

http://localhost:<port>

For EC2 instances:

http://<publicIPv4>:<port>

Note: Ensure the port is whitelisted in the EC2 instance security group.
