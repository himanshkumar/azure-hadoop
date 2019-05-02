#!/usr/bin/python
newline = '\n'
label_name_node = "namenode: "
label_job_tracker= "jobtracker: "

with open('hadoop/public-ip', 'r') as f:
    ips = [ip.strip() for ip in f.readlines()]

    with open('hadoop/roles/datanode/defaults/main.yml', 'w') as f2:
        f2.write(label_name_node)
	f2.write(ips[0] + newline)

        f2.write(label_job_tracker)
        f2.write(ips[1])

with open('hadoop/public-ip', 'r') as f3:
    ips = [ip.strip() for ip in f3.readlines()]

    with open('hadoop/roles/jobtracker/defaults/main.yml', 'w') as f4:
        f4.write(label_name_node)
        f4.write(ips[0] + newline)
