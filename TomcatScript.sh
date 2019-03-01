#!bin/bash

sudo yum -y  update
sudo yum install tomcat -y
sudo service tomcat7 start
sudo yum install tomcat7-webapps tomcat7-docs-webapp tomcat7-admin-webapps
sudo fuser -v -n tcp 8080
