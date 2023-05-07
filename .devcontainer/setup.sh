#!/bin/bash

# Quit on error
set -e

sudo apt-get update

sudo apt-get install -y proj-bin postgresql-client

rvm install $CODESPACE_VSCODE_FOLDER

source $NVM_DIR/nvm.sh
nvm install

cp docker-compose.override.yml.example docker-compose.override.yml

docker-compose build

bin/setup ruby
