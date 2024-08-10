# Cybersecurity Suite
This is a collection of basic tools used in various cybersecurity functions. Some tools are functional and used by me for CTF websites while others are just to explore basic concepts.

Filelist | Description

lightweightIDS.sh  - I made a lightweight host based IDS that works on Windows or Linux. On linux it monitors access logs and checks file hashes. On windows it monitors an important log file. 

WindowsIDS.bat - Batch file used by lightweightIDS.sh for part of windows monitoring

LinuxHostEnumeration.sh - script to run a bunch of common host enumeration commands for linux

WindowsHostEnumeration.bat - windows enumeration script

EncryptionWrapper.sh - Wrapper function written in bash to encrypt / decrypt and run a script.

Main.cpp - main tool wrapper for automating various tool use


CLI TOOL: 
Take std in as input
Take any file as input
output should either be stdout or file to go to
std err should be all output you want to see but don't want to interrupt basic program flow
