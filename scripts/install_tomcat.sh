#!/bin/bash
#cd /tmp
#yum install java -y
#wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz
#tar -xzf apache-tomcat-8.5.64.tar.gz
#cp -R apache-tomcat-8.5.64 /usr/local/
#mv /usr/local/apache-tomcat-8.5.64 /usr/local/tomcat/
PACKAGE=/usr/local/tomcat/webapps/hello-world-web-app.war
FILE=/usr/local/tomcat/webapps/hello-world-web-app
DATE=`date +%Y%m%d_%T`
if [ -f "$PACKAGE" ]; then
    echo "$PACKAGE exists"
    mv "$PACKAGE" "$PACKAGE$DATE"
fi

if [ -d "$FILE" ]; then
   echo "$FILE exists and will be deleted"
   rm -rf "$FILE"
fi
