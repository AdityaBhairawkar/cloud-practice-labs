#!/bin/bash

echo "=========$(date +"%A %d %B %Y %I:%M:%S %p %Z")==========" >> sysinfo.log


echo "Hostname: $(hostname)" >> sysinfo.log
echo "Uptime: $(uptime -p)" >> sysinfo.log
echo "Users logged In: $(who | wc -l)" >> sysinfo.log


echo "------------------Memory Usage--------------">> sysinfo.log
free -h >> sysinfo.log


echo "--------------------Disk Usage-------------------" >> sysinfo.log
df -h >> sysinfo.log


echo "--------------------------------------------------" >> sysinfo.log
echo "" >> sysinfo.log
