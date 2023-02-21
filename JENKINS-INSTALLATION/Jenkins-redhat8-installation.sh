#!/bin/bash
# Author: Prof Legah
# date: 02/21/2023
# Installing Jenkins on RHEL 7/8, CentOS 7/8 or Amazon Linux OS
# You can execute this script as user-data when launching your EC2 VM.
sudo timedatectl set-timezone America/new_york
sudo hostnamectl set-hostname jenkins
sudo yum install wget -y
sudo wget -O /etc/yum.repos.d/jenkins.repos \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo yum upgrade -y
# add required dependencies for the jenkins package
sudo yum install java-11-openjdk -y
sudo yum install jenkins -y
sudo systemctl daemon-reload
# start jenkins
# start jenkins
# you can enable the jenkins service to start at boot with the command:
sudo systemctl enable jenkins
# you can start the jenkins service with the command:=
sudo systemctl start jenkins
# you can check the status of the jenkins service using the command:
sudo systemctl status jenkins
sudo su - ec2-user
echo "echo of jenkins installation"
