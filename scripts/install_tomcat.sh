#!/bin/bash
cd /tmp
yum install java -y
wget https://downloads.apache.org/tomcat/tomcat-8/v8.5.64/bin/apache-tomcat-8.5.64.tar.gz
tar -xzf apache-tomcat-8.5.64.tar.gz
cp -R apache-tomcat-8.5.64 /usr/local/
mv /usr/local/apache-tomcat-8.5.64 /usr/local/tomcat/
