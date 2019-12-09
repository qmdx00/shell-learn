#!/bin/bash
#
# list file and create it

read -p "please enter your file name: " file

ls | grep $file &>/dev/null;
if [ $? -ne 0 ]; then
    echo "$file don't exist, crate it ..."
    echo "hello world" > $file
else
    echo "$file already exist, do nothing ..."
fi
