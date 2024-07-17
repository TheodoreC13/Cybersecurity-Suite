#!/bin/bash
#
# Description:
# Basic Lightwieght Host-based IDS
# Usage:
# ./LightwieghtIDS.sh
# Author
# github.com/TheodoreC13
# References Used: 
# Cybersecurity Ops With Bash - Paul Troncone and Carl Albing
# Linux/Windows man pages

# Check for Operating system by checking wevtutil and scutil
if type -t wevtutil &> /dev/null
then 
	readonly OS=Windows
elif type -t scutil &> /dev/null
then 
	readonly OS=macOS
else readonly OS=Linux
fi

# Linux
# Monitor Access logs searching through a basic indicators of compromise text file. Runs in the background
if [[ "$OS" == "Linux" ]]
then
	ALERTFILE=$(pwd)/AlertFile.txt
	# monitor a few logs
	tail -f /var/log/apache2/access.log | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	tail -f /var/log/daemon.log | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	tail -f /var/log/auth.log | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	tail -f /var/log/kern.log | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	tail -f /var/log/messages | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	tail -f /var/log/syslog | egrep --line-buffered -i -f IOC.txt | tee -a $ALERTFILE &
	# compare hashes from baseline, --quiet only shows files that do not match
	read -p "Enter baseline file for hash comparison: " BASELINE
	sha1sum -c --quiet $BASELINE

fi
# Windows
# Monitor a log for indicators of compromise. 
# TODO: Add start /b to run this in the background.
if [[ "$OS" == "Windows" ]]
then
	# for a full list run 'wevtutil -el' , this is the file we want to monitor
	readonly WINLOG="Application" 
	# We append this file with possible alerts. Could absolutely change this to be userinput or some such
	readonly ALERTFILE=$(pwd)/AlertFile.txt
	# executes the wevtutil to query specified file, c:1 returns only 1 log entry, rd:true makes this read the most recent log entry, f:text returns as text instead of xml to the screen for ease of reading.
	LASTLOG=$(wevtutil qe "$WINLOG" //c:1 //rd:true //f:text)
	# Continuously loops checking the log, if the log is updated it outputs to screen 
	while true
	do
		CURRENTLOG=$(wevtutil qe "$WINLOG" //c:1 //rd:true //f:text)
		if [[ "$CURRENTLOG" != "$LASTLOG"]]
		then
			echo $CURRENTLOG
			# Using egrep $CURRENTLOG will search that entire file. If I just want the last line I have a batch file WindowsIDS.bat that will search the last line.
			# egrep --line-buffered -i -f IOC.txt $CURRENTLOG | tee -a AlertFile.txt
			# This is a batch script, will grab the last line from our current log and put it in the alert log
			./WindowsIDS.bat $CURRENTLOG $ALERTFILE
			echo "~-------------------------------~"
			LASTLOG=$CURRENTLOG
	done
fi

# macOS
# Todo later, I dont know much about macOS yet
