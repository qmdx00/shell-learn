#!/bin/bash
#
#==========================================
# @description: commit code to github 
# @author: yuanweimin
# @data: 2019/12/09
#==========================================

if [[ ! $# -eq 1 ]]; then
    echo "usage: $(basename $0) [<commit message>]"
    exit
else
    git add . && git commit -m $1 && git push
    if [[ $? -eq 0 ]]; then
        echo "commit successful ..."
    else 
        echo "commit failed ..."
    fi
fi


