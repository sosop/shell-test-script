#!/bin/bash

# 用户名对应uid
# 用户名 密码 uid gid 文件描述 home目录 默认shell
/etc/passwd

# 密码管理文件 root权限
# 用户名 加密密码 上次修改密码到当天天数 多少天后能需改密码 多少天后必须修改密码 密码过期前多少天通知用户修改密码 密码过期后多少天禁用账户 用户被禁用日期 预留字段
/etc/shadow

# 添加用户
# 查看默认值
useradd -D
useradd -m username

# 删除用户
userdel -r username

# 修改用户
finger username
usermod passwd chpasswd chsh chfn chage

# 组
# 组名 组密码 gid 用户列表
/etc/group

groupadd groupName
groupmod -n groupName


# 文件权限
# 默认权限 全权限值文件666 目录777
umask 026
umask

# 改变权限
chmod mode[八进制] file
chmod u(属主)g(组)o(其他)a(全部)[+|-|=]rwxXstugo

# 改变所属关系
chown owner[.group] file
chgrp groupname file


# 共享文件
# 111八进制对应
SUID 属主权限
SGID 组权限
黏着位 进程结束后文件还会存于内存



