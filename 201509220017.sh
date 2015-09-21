#!/bin/bash

# sed流式编辑器，编辑器处理数据之前按照一组规则来编辑数据流
# 每次从输入中读取一行
# sed -e script -f file -n(quiet)
# 自身不会修改文件

echo "hi,shell! it's a test!" | sed 's/shell/golang/g'
echo "hi,shell! it's a test!" | sed 's/shell/golang/g; s/test/testing/'
echo "hi,shell! it's a test!" | sed -f script1

# 类变成环境gawk
# gawk -F 分隔符 -f file -v var=value -mf(max field) N -mr(max row) N
# 对每行文本进行一遍脚本
# $0 整个文本行 $1 $2 ... $n
# BEGIN{ FS=":" }

echo "hi" | gawk '{ print "this is gawk" }'

gawk -F : '{print $1}' /etc/passwd

echo "my name is gawk" | gawk '{$4="sosop"; print $0}'

gawk -F : -f script2 /etc/passwd

echo "hi" | gawk 'BEGIN{ print "BEFORE" }{}END{ print "AFTER" }'
