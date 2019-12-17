#!/usr/bin
#
# kill process pid

process="your process name"
pid=$(ps -aux|grep $process|grep -v grep|awk '{print $2}')

kill $pid
if [[ $? -eq 0 ]]; then
    echo "$process pid=$pid is killed !"
else
    echo "process is not running !"
fi