#!/bin/bash

# Enter hostnames of your clients 
# DO NOT ENTER SERVER THERE. IT HALTS LATER
hosts='host1 host2'

for host in $hosts 
do
	ssh $host 'sync; halt'
done

halt