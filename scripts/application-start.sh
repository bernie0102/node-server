#!/usr/bin/env bash

su - ec2-user

export PATH=$PATH:/usr/local/bin/

cd /home/ec2-user/node-server

pm2 stop bin/app.js
pm2 start bin/app.js