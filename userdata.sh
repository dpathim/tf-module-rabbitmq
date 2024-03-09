#!/bin/bash

yum install ansible -y &>>/opt/userdata.log
yum install python3.11-pip.noarch -y &>>/opt/userdata.log
pip3.11 install botocore boto3 &>>/opt/userdata.log

ansible-pull -i localhost, -U https://github.com/dpathim/roboshop-ansible.git main.yml -e component=rabbitmq &>>/opt/userdata.log


