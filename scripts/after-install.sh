#!/usr/bin/env bash

echo "$USER"

set -e

export PATH=$PATH:/usr/local/bin/

cd /home/ec2-user/node-server

npm install