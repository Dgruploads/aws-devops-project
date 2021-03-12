#!/bin/bash
################################################################################################################
# Please note this is an example copy path. You will need to change this according to the path on  your server.#
################################################################################################################
yes | sudo cp -rf /opt/codedeploy-agent/deployment-root/*/*/deployment-archive/target/*.war /usr/local/tomcat/webapps/
