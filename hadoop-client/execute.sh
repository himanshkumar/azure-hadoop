#!/bin/bash
sudo yum install vim wget curl epel-release -y
sed -i '/#PermitRootLogin yes/c\PermitRootLogin yes' /etc/ssh/sshd_config
sed -i '/#PasswordAuthentication yes/c\PasswordAuthentication yes' /etc/ssh/sshd_config
echo ''|ssh-keygen -N ''
ssh-copy-id -i ~/.ssh/id_rsa.pub root@localhost
systemctl restart sshd
sudo yum install ansible -y
ansible-playbook client/client.yml -i client/hosts
