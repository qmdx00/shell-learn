#!/bin/bash     # 设置默认的执行环境

# 定义变量
str="hello"
echo "$str world"

# 用 python 执行
/usr/bin/python <<-EOF
print("$str python")
EOF

echo -e "\033[1;44m end of script \033[0m"