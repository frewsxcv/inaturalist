#!/bin/bash

# Exit script on error
set -e

sudo apt-get update

sudo apt-get install -y proj-bin postgresql-client

docker-compose pull

. $RVM_PATH/scripts/rvm
rvm install $(cat .ruby-version)
rvm use $(cat .ruby-version)

. $NVM_DIR/nvm.sh
nvm install

cp docker-compose.override.yml.example docker-compose.override.yml
