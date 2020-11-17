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
    git add . && git commit -m "$1" && git push &>/dev/null
    if [[ $? -eq 0 ]]; then
        echo -e "commit successful ...\a"
    else 
        echo -e "commit failed ...\a"
    fi
fi


