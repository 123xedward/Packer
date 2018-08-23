#!/bin/bash
set -e

sudo yum update -y
echo "yum update done. Waiting"
sudo amazon-linux-extras install ansible2
echo "Running build."

ansible --version
ls -l
