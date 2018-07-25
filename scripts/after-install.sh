#!/usr/bin/env bash

su - ec2-user

set -e

export PATH=$PATH:/usr/local/bin/

cd /home/ec2-user/node-server

npm install