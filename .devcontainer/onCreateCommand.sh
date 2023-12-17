#!/bin/bash

# -e Exit script on error
# -x Print commands
set -ex

# sudo apt-get update

# sudo apt-get install -y proj-bin postgresql-client

# docker-compose pull

. $RVM_PATH/scripts/rvm
rvm install $(cat .ruby-version)
rvm use $(cat .ruby-version)

. $NVM_DIR/nvm.sh
nvm install

# cp docker-compose.override.yml.example docker-compose.override.yml

# `bin/setup ruby` requires services to be started
# docker-compose up -d

bin/setup ruby
