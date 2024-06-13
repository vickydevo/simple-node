# FROM node:16

# # Create app directory
# WORKDIR /usr/src/app

# # Install app dependencies
# # A wildcard is used to ensure both package.json AND package-lock.json are copied
# # where available (npm@5+)
# COPY package*.json ./

# RUN npm install
# # If you are building your code for production
# # RUN npm ci --only=production

# # Bundle app source
# COPY . .

# EXPOSE 5000
# CMD [ "node","index.js" ]


FROM node:16

LABEL MAINTAINER ="VIGNAN"
LABEL Created_on = "june"
RUN useradd -ms /bin/bash dockeruser
USER dockeruser
# Create app directory
WORKDIR /home/dockeruser


# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm install
# If you are building your code for production
# RUN npm ci --only=production

# Bundle app source
ADD . .
ADD https://dlcdn.apache.org/maven/maven-3/3.9.7/binaries/apache-maven-3.9.7-bin.tar.gz
EXPOSE 3000
CMD [ "node","iptask.js" ]