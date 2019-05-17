# INSTRUCTIONS
##TO SETUP HADOOP CLUSTER ON AZURE##
## We assume that you have cloned the git repo
$ cd azure-hadoop/hadoop-setup/

##If you want to install and login Azure ##

$ ./azure_install.sh

Then copy the code and paste on the link shown of microsoft then close the tab , You will revice the details on your terminal , If you donot get the details run.

$ az login #and copy the code to the browser

##To setup the cluster##

$ ./execute.sh

##After 20-25min(depending on the internet speed) your cluster will be ready and displaying you you public ip to access the web ui##

To access the web ui of namenode "http://<namenode_ip>:50070"
or
Click on the Domain name of  VM1.

To access the web ui of jobtracker "http://<jobtracker_ip>:50030"
or
Click on the Domain name of  VM2.
