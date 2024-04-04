#!/bin/bash
# amazon linux
sudo yum install git -y
sudo yum install nodejs -y
sudo yum install npm -y
node index.js


# for ubuntu
sudo apt update -y
sudo apt install git -y
sudo apt install nodejs -y
sudo apt install npm -y
node index.js

# python --> pip install
# java   --> mvn clean install
# 

sudo npm install -g npm@9.6.2
sudo docker build . -t node80
sudo docker build . -t node5000
sudo docker run -d -p 80:5000 --name nodecont80 node80
sudo docker run -d -p 5000:5000 --name nodecont5000 node5000

sudo docker exec -it <container name> /bin/bash 

sudo docker log nodecont80
sudo docker start nodecont80  
sudo docker stop nodecont80
sudo docker rm nodecont80 #remove container 

# user date #------>>  using lauch template
# #!/bin/bash
# cd /home/ec2-user/code/simple-node-server-ankit
# sudo docker stop nodecont80 
# sudo docker rm nodecont80 nodecont5000
# sudo docker run -d -p 80:5000 --name nodecont80 node80
# sudo docker run -d -p 5000:5000 --name nodecont5000 node5000  
