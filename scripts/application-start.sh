#!/usr/bin/env bash

cd /home/ec2-user/node-server

pm2 stop app.js
pm2 start app.js