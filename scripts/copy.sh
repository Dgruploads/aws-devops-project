#!/bin/bash
################################################################################################################
# Please note this is an example copy path. You will need to change this according to the path on  your server.#
################################################################################################################
ls /opt/codedeploy-agent/deployment-root/*/ > /tmp/deployment.txt
deployment=$(sed -n '/d-/p' /tmp/deployment.txt | head -1)
cp -rf /opt/codedeploy-agent/deployment-root/*/$deployment/deployment-archive/target/*.war /usr/local/tomcat/webapps/
