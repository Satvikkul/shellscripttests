#!bin/bash

sudo yum -y update
sudo yum install java-1.8.0 -y
sudo yum remove java-1.7.0-openjdk
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key
sudo yum install jenkins -y
sudo service jenkins start
chmod 777 /var/lib/jenkins/secrets/initialAdminPassword
