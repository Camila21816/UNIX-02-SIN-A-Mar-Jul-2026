#!/bin/bash
for ip_address in "$@"; do
echo "Taking some action on IP address ${ip_address}"
ping -c 3 "${ip_address}"
done
#Ip:
#127.0.0.1 
#github.com
#localhost