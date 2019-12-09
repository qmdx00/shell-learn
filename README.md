### shell 学习记录

##### 常用操作

```bash
#!/bin/bash

cat <<- EOF > file      # 从键盘读取内容到file中
!!                      # 执行上一条命令
^A ^E ^K                # 命令编辑，跳到开头 跳到结尾 删除光标之后命令
^Z fg bg                # 后台执行 回到前台 查看后台任务
touch file{1..3}.dat    # 集合操作，创建多个文件
```