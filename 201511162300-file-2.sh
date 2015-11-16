#!/bin/bash

mount -t type[vfat ntfs iso9660] device director
umount [device | directory]
df -h
du -h
sort -n -r -k /etc/passwd
grep -v -n -i  -c  -e patter /etc/passwd

#bzip2
bzip2 file
bunzip2 fle
bzcat file
#gzip
gzip file
gunzip file
gzcat file

tar -zxvf file
tar -zcvf file
