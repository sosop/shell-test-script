#!/bin/bash

# 基于Debian系统
# 命令
apt-get
apt-cache
aptitude

# 查看宝信息
aptitude show package_name

# 查看包的关联文件
dpkg -L package_name

# 查看某个文件属于某个包
dpkg --search file_name

# 查看是否安装类软件包, i install p no
aptitude search package_name
aptitude install pakcage_name

# 更新软件
aptitude safe-upgrade package_name
# 不检查包与包之间的以来升级
aptitude full-upgrade package_name
aptitude dist-upgrade package_name

# 卸载软件，不删除数据和文件
aptitude remove package_name
# 全部卸载并且删除数据和文件
aptitude purge package_name

# aptitude库
/etc/apt/sources.list

# 基于red hat系统
# 列出已安装包
yum list installed
yum list package_name
yum provides file_name
yum install package_name
yum localinstall file_name.rpm
yum list updates
yum update package_name
yum update
yum remove package_name
yum erase package_name
# 解决以来损坏
yum claen all
yum deplist package_name
yum repolist

# 源码安装
./configure && make && make install
