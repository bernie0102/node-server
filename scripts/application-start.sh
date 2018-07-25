#!/usr/bin/env bash

export PATH=$PATH:/usr/local/bin/

cd /home/ec2-user/node-server

pm2 stop pm2-api.json
pm2 start pm2-api.json