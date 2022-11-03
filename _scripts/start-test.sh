#!/bin/bashnano
BASEDIR=/opt/cicd-test
APPNAME=cicd-test
LOGS="${BASEDIR}/logs";
mkdir -p $LOGS
cd $BASEDIR

while(pm2 list |grep ${APPNAME} -c)
do
   pm2 delete ${APPNAME}
    sleep 1
    echo 'wake up'
done

pm2 start app.js --name ${APPNAME}
