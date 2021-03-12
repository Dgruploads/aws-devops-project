#!/bin/bash
################################################################################################################
# Please note this is an example copy path. You will need to change this according to the path on  your server.#
################################################################################################################
FILE=/usr/local/tomcat/webapps/hello-world-web-app.war
DATE=`date +%Y%m%d_%T`
if [ -f "$FILE" ]; then
    echo "$FILE exists"
    mv "$FILE" "$FILE$DATE"
else
    cp -rf /opt/codedeploy-agent/deployment-root/*/*/deployment-archive/target/*.war /usr/local/tomcat/webapps/
fi
