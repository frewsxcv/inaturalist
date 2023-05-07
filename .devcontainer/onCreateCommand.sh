#!/bin/bash

# Exit script on error
set -ex

sudo apt-get update

sudo apt-get install -y proj-bin postgresql-client
