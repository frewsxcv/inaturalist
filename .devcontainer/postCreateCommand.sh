#!/bin/bash

# Exit script on error
set -e

rvm use ruby --install --default --create

source $NVM_DIR/nvm.sh
nvm install

cp docker-compose.override.yml.example docker-compose.override.yml

docker-compose build

bin/setup ruby
