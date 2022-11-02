#!/bin/bash

source /etc/environment
sudo sysctl -p

BASEDIR=/opt/104ha-elearning-admin
LOGS="${BASEDIR}/logs";
mkdir -p $LOGS
cd $BASEDIR

while(pm2 list |grep 'elearning-admin' -c)
do
   pm2 delete elearning-admin
    sleep 1
    echo 'wake up'
done

pm2 start server/index.js --name "elearning-admin"
