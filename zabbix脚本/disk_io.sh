#!/bin/bash
#disk io monitor index

#tps 每秒传输次数 它表示每秒磁盘完成的读写操作次数。磁盘的 TPS 越高，意味着磁盘的读写能力越强

disk_tps=`iostat | grep vda  | awk '{print $2}'`

#kB_read/s  是衡量磁盘读取速度的指标，表示每秒从磁盘读取的数据量

disk_read=`iostat | grep vda  | awk '{print $3}'`

#kB_wrtn/s 是指磁盘的写入速度，表示每秒向磁盘写入的数据量

disk_write=`iostat | grep vda  | awk '{print $4}'`

#kB_dscd/s 是指磁盘每秒从缓存中被丢弃的数据量

disk_dscd=`iostat | grep vda  | awk '{print $5}'`

#kB_read  表示从磁盘读取的总数据量

disk_read_kb=`iostat | grep vda  | awk '{print $6}'`

#kB_wrtn 表示自系统启动以来从磁盘写入的总数据量

disk_write_kb=`iostat | grep vda  | awk '{print $7}'`

echo -e "disk_tps=$disk_tps
disk_read=$disk_read
disk_write=$disk_write
disk_dscd=$disk_dscd
disk_read_kb=$disk_read_kb
disk_write_kb=$disk_write_kb"

