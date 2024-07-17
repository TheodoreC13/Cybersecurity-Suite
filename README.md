# CLI-Wrapper-for-Tools
Wrapper for tool integration to create a report.
First step was to decide language. I picked C++ to learn it due to it's popularity especially in cybersecurity.

run a security analysis suite using some prompts to determine which checks are nessessary

Filelist | Description
lightweightIDS.sh  - I made a lightweight host based IDS that works on Windows or Linux. On linux it monitors access logs and checks file hashes. On windows it monitors an important log file. 
WindowsIDS.bat - Batch file used by lightweightIDS.sh for part of windows monitoring
IOC.txt - Basic list of IOC to check for in various logs
EncryptionWrapper.sh - Wrapper function written in bash to encrypt / decrypt and run a script.
Main.cpp - main tool wrapper for automating various tool use

CLI TOOL: 
Take std in as input
Take any file as input
output should either be stdout or file to go to
std err should be all output you want to see but don't want to interrupt basic program flow
