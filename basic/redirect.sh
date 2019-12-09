#!/bin/bash
#
# 管道重定向操作
#
# 标准输入(standard input)     0	从键盘获得输入
# 标准输出(standard output)    1	输出到屏幕(即控制台)
# 错误输出(error output)       2	输出到屏幕(即控制台)

# command >file  # 等同于 command 1>file, 将 stdout 重定向到 file
# command >>file # 等同于 command 1>>file, 将 stdout 重定向到 file (追加)
# command 2>file # 将 errout 重定向到 file
# command 2>>file # 将 errout 重定向到 file (追加)
# command <file # 等同于 command 0<file, 将 file 作为 stdin 输入
# command <<delimiter # 从 stdin 读入, 直到遇到 delimiter 分隔符
#
# eg:
# ls a b c 1>out 2>err # 重定向 stdout 到 out 文件, errout 到 err 文件中
# cat <err  # 从 err 文件中读取
# cat >out <input # 从 input 文件中读取写入到 out 文件中
# cat >out <<EOF # 从键盘读入写到 out 文件中

# command >/dev/null 2>&1 # stdout 重定向到黑洞, errout 重定向到 stdout(都不可见)
# command 2>&1 >/dev/null # errout 重定向到 stdout(屏幕), stdout 重定向到黑洞(不可见)
# command 1>/dev/null 2>/dev/null # 文件被打开了两次，两个文件描述符会抢占性的往文件中输出内容(不要使用该方法)
#
# eg: 
# nohup java -jar xxx.jar >/dev/null 2>&1 & # 丢弃日志并在后台执行