#!/usr/bin
#
# kill process pid

process="your process name"
pids=$(ps aux|grep $process|grep -v grep|awk '{print $2}')

for pid in $pids; do
    kill $pids
    if [[ $? -eq 0 ]]; then
        echo "$process pid=$pid is killed !"
    else
        echo "process is not running !"
    fi
done