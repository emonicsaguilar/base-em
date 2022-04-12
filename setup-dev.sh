#!/bin/bash

sudo apt update -y && sudo apt upgrade -y;
sudo apt install docker-compose -y;



mkdir projects
cd projects
git clone https://github.com/emonicsaguilar/api.git

git clone https://github.com/emonicsaguilar/webapp.git

git clone https://github.com/emonicsaguilar/backoffice.git

cd ..

cat .env.dev > .env;
cat projects/api/.env.dev > projects/api/.env
cat projects/webapp/.env.dev > projects/webapp/.env
cat docker-compose.dev.yml > docker-compose.yml
cat docker/webapp/Dockerfile.dev.yml > docker/webapp/Dockerfile.yml
cat docker/nginx/Dockerfile.dev.yml > docker/nginx/Dockerfile.yml