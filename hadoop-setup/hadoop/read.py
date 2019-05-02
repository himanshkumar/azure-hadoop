#!/usr/bin/python
newline = '\n'

label_name_node = "[namenode]" + newline
label_job_tracker = newline + "[jobtracker]" + newline
label_data_node= newline + "[datanode]" + newline

name_node, job_tracker, datanode = [], [], []
with open('hadoop/public-ip', 'r') as f:
    ips = [ip.strip() for ip in f.readlines()]

    with open('hadoop/hosts', 'w') as f2:
        for ip in ips:
            f2.write(ip)
            f2.write(newline)
        f2.write(newline)
        
        f2.write(label_name_node)
        f2.write(ips[0] + newline)

        f2.write(label_job_tracker)
        f2.write(ips[1])
        f2.write(newline)

        f2.write(label_data_node)
        for ip in ips[2:]:
            f2.write(ip)
            f2.write(newline)
