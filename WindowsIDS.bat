REM Batch script for windows IDS
REM ./WindowsIDS.bat logfile alertfile
REM used to extract the last line of a log file for testing
@echo off
cls
:: Check commant line arguments
@set argC=0
@for %%x in (%*) do Set /A argC+=1
if %argc% NEQ 2 goto usage
if [%1]==[] goto usage
if [%2]==[] goto usage

echo Starting WindowsIDS script
:: Set our current log file that we're checking
Set CURRENTLOG=%cd%\%1
:: Sets the variable LASTLINE to the final line of the file
For /F "UseBackQ Delims==" %%A In ("%CURRENTLOG%") Do @Set "LASTLINE=%%A"
Echo Last line of log file:
Echo %LASTLINE%
:: creating a new file with only the new lines to check. Checking an entire log file can take a long time.
Set CHECKFILE=%cd%\Windows_IDS_suspiciousline.txt
Echo %LASTLINE%>"%CHECKFILE%"
Echo Any lines with indicators of compromise have been written to the Alert Logfile given.
:: searches the smaller checkfile for any IoC and sends output to alertfile. 
FINDSTR /n /l /g:IOC.txt "%CHECKFILE%">>%2
DEL "%CHECKFILE%"
exit

:usage
@echo Wrong number of command line arguments.
@echo Usage: %0 file.log alertfile.log
:: Error: 
exit /b 1 