#!/bin/bash
sudo yum install vim wget curl epel-release -y
sudo yum install ansible -y
ansible-playbook client/client.yml -i client/hosts
