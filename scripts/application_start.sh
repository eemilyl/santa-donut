#!/bin/bash


#navigate into our working directory where we have all our github files
cd /home/ec2-user/express-app

#add npm and node to path 
export NVM_DIR="$Home/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" #loads nvm 
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" #loads nvm bash_completion (node is in path)

yum install -y httpd
service httpd start

#install node modules
npm install
npm i knex
npm i mysql


#start our node app in the background 
node index.js > app.out.log 2> app.err.log < /dev/null &