#!/bin/bash 
#

# name of the computer
hostname
# username
whoami
# user privledges
id
# lots of environment stuff
env
# network interfaces
ip link show
time /T
date /T
whoami

systeminfo

net user
dir /a "C:\Users\"
net localgroup administrators
net group administrators

net start
schtasks
tasklist
tasklist -svc
tasklist -v
wmic process list full
wmic product get name
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\Run
reg query HKLM\Software\Microsoft\Windows\CurrentVersion\RunOnce
*/
