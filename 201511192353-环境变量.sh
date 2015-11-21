#!/bin/bash

# 查看全局变量
printenv

echo $HOME

# 局部变量
set

# 设置局部环境变量,进程间不能共享变量
var=value
echo $var

# 设置全局变量
export var

# 删除变量
unset var

# 环境变量
echo $PATH

# 登录shell
/etc/profile
$HOME/.bash_profile
$HOME/.bash_login
$HOME/.bash_profile

# 交互式shell
$HOME/.bashrc

# 非交互式shell
# 可变数组
vArr=(1 2 3 4 5 6 7 8)
echo $vArr
echo ${vArr[7]}
echo ${vArr[*]}
vArr[0]=8
echo ${vArr[*]}
unset vArr[2]
echo ${vArr[*]}

# 别名
alias -p
alias tf='tail -f'
