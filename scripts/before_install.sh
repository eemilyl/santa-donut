#!/bin/bash

#download node and npm
curl --silent --location https://rpm.nodesource.com/setup_14.x | sudo bash -
nvm install node

#create our working directory if it doesn't exist 
DIR="/home/ec2-user/express-app"
if [ -d "$DIR" ]; then
    echo "${DIR} exists"
else
    echo "Creating ${DIR} directory"
    mkdir ${DIR}
fi