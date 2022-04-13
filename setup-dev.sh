#!/bin/bash

sudo apt update -y && sudo apt upgrade -y;
sudo apt install docker-compose curl -y;
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash 
. ~/.nvm/nvm.sh

mkdir projects
cd projects
git clone https://github.com/emonicsaguilar/api.git

git clone https://github.com/emonicsaguilar/webapp.git

git clone https://github.com/emonicsaguilar/backoffice.git

cd api;
nvm install;
nvm use;
npm install -g yarn;
yarn;

cd ../webapp;
nvm install;
nvm use;
npm install -g yarn;
yarn;

cd ../backoffice;
nvm install;
nvm use;
npm install -g yarn;
yarn;

cd ../..;

cat .env.dev > .env;
cat .data/config/.env.api > projects/api/.env
cat .data/config/.env.webapp > projects/webapp/.env
cat docker-compose.dev.yml > docker-compose.yml