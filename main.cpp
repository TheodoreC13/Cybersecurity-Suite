#include <iostream>
#include <fstream>

// basic idea is to run some tools and generate a report
int main()
{
	// Scan network using nmap
	// Check for open ports using ncat
	// pathping / netstat / dig
	// packet sniffing?
	
	// System checks
	// uname -a for linux, ver for windows
	// vulnerability scans
	// uname/hostname/whoami
	// check running jobs with jobs -l
	// ifconfig -s?
	// netstat
	// traceroute
	// history
	// check for /etc/shadow access

	// package all of this,  encrypt for funsies
	// send report?


	// run all of this with an encryption wrapper

	// Fuzzer?
	/*
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
}