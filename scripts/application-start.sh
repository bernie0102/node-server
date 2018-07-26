#!/usr/bin/env bash

export PATH=$PATH:/usr/local/bin/

cd /home/ec2-user/node-server

if [[ $DEPLOYMENT_GROUP_NAME = *"production"* ]]; then
    export NODE_ENV="production"
elif [[ $DEPLOYMENT_GROUP_NAME = *"staging"* ]]; then
    export NODE_ENV="staging"
else
    export NODE_ENV="development"
fi

pm2 stop pm2-api.json
pm2 start pm2-api.json