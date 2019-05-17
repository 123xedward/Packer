#!/bin/bash
set -e

sudo yum update -y
echo "yum update done. Waiting"

sudo easy_install pip
echo "installing pip"

sudo pip install ansible
echo "installing ansible"

ansible --version
ls -l

# Script metadata
sudo yum -y install httpd
sudo chkconfig --levels 235 httpd on
sudo service httpd start
sudo yum -y install php
sudo service httpd restart
sudo mkdir /var/www/html/css

#Agente SSM
#sudo yum install -y https://s3.amazonaws.com/ec2-downloads-windows/SSMAgent/latest/linux_amd64/amazon-ssm-agent.rpm
#sudo systemctl status amazon-ssm-agent
#sudo systemctl enable amazon-ssm-agent
#sudo systemctl start amazon-ssm-agent