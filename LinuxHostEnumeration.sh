#!/bin/bash 
# Script		-	WindowsHostEnumeration.bat
# Description	-	Used for local enumeration on a windows machine
# Auther		-	https://github.com/TheodoreC13
# Version		-	1.0
# ToDO			-	Take all information and format / scan for anything "interesting"
# Size			-	This batch script creates a text file. On my personal computer this ends up being about 700KB.

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
# Enviornment Variables
set >> $WriteFile 2>&1
echo "~~~~~~~~~~ System Information Done~~~~~~~~~~" >> $WriteFile 2>&1
echo "~~~~~~~~~~User \& Group Information~~~~~~~~~~" >> $WriteFile 2>&1
id >> $WriteFile 2>&1
who >> $WriteFile 2>&1
last >> $WriteFile 2>&1
cat /etc/passwd >> $WriteFile 2>&1
cat /etc/sudoers >> $WriteFile 2>&1
history >> $WriteFile 2>&1
echo "~~~~~~~~~~User \& Group Information Done~~~~~~~~~~" >> $WriteFile 2>&1
echo "~~~~~~~~~~Network Information~~~~~~~~~~" >> $WriteFile 2>&1
route >> $WriteFile 2>&1
arp >> $WriteFile 2>&1
ifconfig >> $WriteFile 2>&1
netstat -antp >> $WriteFile 2>&1
netstat -anup >> $WriteFile 2>&1
iptables -L >> $WriteFile 2>&1
echo "~~~~~~~~~~Network Information Done~~~~~~~~~~" >> $WriteFile 2>&1

mount
dpkg -l 
apache2 -v
mysql -version
cat /etc/resolv.conf
cat /etc/network/interfaces


# potential ssh info
cat ~/.ssh/authorized_keys
cat ~/.ssh/identity.pub
cat ~/.ssh/identity
cat ~/.ssh/id_rsa.pub
cat ~/.ssh/id_rsa
cat ~/.ssh/id_dsa.pub
cat ~/.ssh/id_dsa
cat /etc/ssh/ssh_config
cat /etc/ssh/sshd_config
cat /etc/ssh/ssh_host_dsa_key.pub
cat /etc/ssh/ssh_host_dsa_key
cat /etc/ssh/ssh_host_rsa_key.pub
cat /etc/ssh/ssh_host_rsa_key
cat /etc/ssh/ssh_host_key.pub
cat /etc/ssh/ssh_host_key

