#!/bin/bash     # 设置默认的执行环境

echo "hello world"

# 用 python 执行
/usr/bin/python <<- EOF
print("hello python")
EOF

echo "end script"