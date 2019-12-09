#!/bin/bash
# 
# read ip from file and ping ip 

if [[ ! $# -eq 1 ]]; then
    echo "usage: $(basename $0) [<ip address file>]"
    exit
fi

if [[ ! -f $1 ]]; then
    echo "error: $1 is not a file"
    exit
fi

for ip in $(cat $1); do
    ping -c 1 $ip &> /dev/null
    if [[ $? -eq 0 ]]; then
        echo "$ip is up"
    else 
        echo "$ip is down"
    fi
done

# eg: chmod +x params.sh && ./params.sh ip.txt
