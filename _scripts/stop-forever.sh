#!/bin/bash
while(pm2 list |grep 'elearning-admin' -c)
do
   pm2 delete elearning-admin
    sleep 3
    echo 'wake up'
done

echo 'while done'