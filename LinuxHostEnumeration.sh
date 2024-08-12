#!/bin/bash 
# 
# Script		-	LinuxHostEnumeration.sh
# Description	-	Used for local enumeration on a linux machine
# Author		-	https://github.com/TheodoreC13
# Version		-	1.0
# ToDO			-	Take all information and format / scan for anything "interesting"

@echo off
# All these commands will be written to this file.
WriteFile=LinuxHostEnumeration.txt

# Date, Time, Timezone
date >> $WriteFile 2>&1

# System Information
echo "~~~~~~~~~~System Information~~~~~~~~~~" >> $WriteFile 2>&1
uname -a >> $WriteFile 2>&1
cat /etc/*-release >> $WriteFile 2>&1
cat /proc/version >> $WriteFile 2>&1
cat /usr/bin/env >> $WriteFile 2>&1
apache2 -v >> $WriteFile 2>&1
dpkg -l >> $WriteFile 2>&1
# apt list --upgradeable
mysql -version >> $WriteFile 2>&1
cat /etc/crontab >> $WriteFile 2>&1
# partitions
mount >> $WriteFile 2>&1
fdisk -l >> $WriteFile 2>&1
lsblk >> $WriteFile 2>&1
# lvdisplay >> $WriteFile 2>&1
# network devices
lspci >> $WriteFile 2>&1
# environment variables
set >> $WriteFile 2>&1
echo "~~~~~~~~~~ System Information Done~~~~~~~~~~" >> $WriteFile 2>&1

# User / Group info
echo "~~~~~~~~~~User \& Group Information~~~~~~~~~~" >> $WriteFile 2>&1
who >> $WriteFile 2>&1
id >> $WriteFile 2>&1
# last >> $WriteFile 2>&1
cat /etc/passwd >> $WriteFile 2>&1
cat /etc/sudoers >> $WriteFile 2>&1
history >> $WriteFile 2>&1
echo "~~~~~~~~~~User \& Group Information Done~~~~~~~~~~" >> $WriteFile 2>&1


# Network Information
echo "~~~~~~~~~~Network Information~~~~~~~~~~" >> $WriteFile 2>&1
route >> $WriteFile 2>&1
arp >> $WriteFile 2>&1
ifconfig >> $WriteFile 2>&1
netstat -antp >> $WriteFile 2>&1
netstat -anup >> $WriteFile 2>&1
iptables -L >> $WriteFile 2>&1
cat /etc/resolv.conf >> $WriteFile 2>&1
cat /etc/network/interfaces >> $WriteFile 2>&1
echo "~~~~~~~~~~Network Information Done~~~~~~~~~~" >> $WriteFile 2>&1


# potential ssh info
cat ~/.ssh/authorized_keys >> $WriteFile 2>&1
cat ~/.ssh/identity.pub >> $WriteFile 2>&1
cat ~/.ssh/identity >> $WriteFile 2>&1
cat ~/.ssh/id_rsa.pub >> $WriteFile 2>&1
cat ~/.ssh/id_rsa >> $WriteFile 2>&1
cat ~/.ssh/id_dsa.pub >> $WriteFile 2>&1
cat ~/.ssh/id_dsa >> $WriteFile 2>&1
cat /etc/ssh/ssh_config >> $WriteFile 2>&1
cat /etc/ssh/sshd_config >> $WriteFile 2>&1 
cat /etc/ssh/ssh_host_dsa_key.pub >> $WriteFile 2>&1
cat /etc/ssh/ssh_host_dsa_key >> $WriteFile 2>&1
cat /etc/ssh/ssh_host_rsa_key.pub >> $WriteFile 2>&1
cat /etc/ssh/ssh_host_rsa_key >> $WriteFile 2>&1
cat /etc/ssh/ssh_host_key.pub >> $WriteFile 2>&1
cat /etc/ssh/ssh_host_key >> $WriteFile 2>&1

