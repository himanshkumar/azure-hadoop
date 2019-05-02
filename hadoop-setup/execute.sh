#!/bin/bash
#--------------------
echo ''|ssh-keygen -N ''
sudo yum install epel-release -y
sudo yum install python-pip -y
sudo yum install ansible -y
sudo pip install pyopenssl
pip install --user ansible[azure]
pip install --user netaddr
pip show cryptography
ansible-playbook deploy-azure/azure-deploy.yml -i deploy-azure/hosts
#echo 'Enter resource group name'
#read rg
az network public-ip list -g hadoop-rg | grep ipAddress | sed 's/[^0-9&&.]*//g' > hadoop/public-ip
az vm  list-ip-addresses -g hadoop-rg | grep -C 1 privateIpAddresses |  sed 's/[^0-9&&.]*//g'|grep -v -e '^[[:space:]]*$'> hadoop/private-ip
python hadoop/read.py
python hadoop/variable.py
ansible -m  ping all -i  hadoop/hosts
ansible-playbook --become --become-user=root hadoop/hadoop.yml -i hadoop/hosts
cat hadoop/hosts
