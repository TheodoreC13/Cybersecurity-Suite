echo off
REM Script		-	WindowsHostEnumeration.bat
REM Description	-	Used for local enumeration on a windows machine
REM Auther		-	https://github.com/TheodoreC13
REM Version		-	1.0
REM ToDO		-	Take all information and format / scan for anything "interesting"
REM Size		-	This batch script creates a text file. On my personal computer this ends up being about 700KB.


REM I open a file that will end up being the output information in a report. This is faster than running each command and piping the output to a file. We also pipe errors to the file.
> WindowsHostEnumerationOutput.txt 2>&1 (

REM Date, Time, Timezone
for /f "tokens=*" %%i in ('tzutil /g') do echo %date% %time% %%i


REM System information
echo ~~~~~~~~~~System Information~~~~~~~~~~
systeminfo
REM systeminfo | findstr /B /C:"OS Name" /C:"OS Version"  :: for only os name/version
wmic os get osarchitecture || echo %PROCESSOR_ARCHITECTURE%
REM computer system settings
wmic computersystem LIST full
REM updates list
wmic qfe list
REM Driver query incase there is a vulnerable Driver
DRIVERQUERY
REM environment variables
set
REM files left in the recycling bin
dir C:\$Recycle.Bin /s /b
REM looking for windows Security Account Manager files
dir /s /b C:\SAM
REM windows System files
dir /s /b C:\SYSTEM
REM looking for Putty private key files
dir /s /b *.ppk
REM looking for installed software
reg query HKCU\Software 
REM Scheduled tasks
schtasks /query /fo LIST /v
REM Windows Services that have been started
net start
REM List Services
sc query
echo ~~~~~~~~~~System Information Done~~~~~~~~~~


REM User & Group information
echo ~~~~~~~~~~User ^& Group Information~~~~~~~~~~
whoami /all
REM local users
net users
dir /b /ad "C:\Users"
REM information on current user
net user %username%
REM information on password requirements
net accounts
REM Domain/Name/ID of all local accounts
wmic USERACCOUNT Get Domain,Name,SID
REM See who else is logged onto this machine and what they are doing
qwinsta
REM Local groups
net localgroup
REM Local Admins
net localgroup Administrators
REM Domain groups - Throws an error sometimes
net group /domain
REM net localgroup Administrators [username] /add
REM net user /add :: Can try and add a personal account here
REM runas /netonly /user<DOMAIN>\<NAME> "cmd.exe" :: password prompted || impersonate someone else in network
echo ~~~~~~~~~~User ^& Group Information Done~~~~~~~~~~ 

REM Network information
echo ~~~~~~~~~~Network Information~~~~~~~~~~
nslookup %LOGONSERVER%.%USERDNSDOMAIN%
REM Network Interfaces
ipconfig /all
REM Show the full DNS list
ipconfig /displaydns
REM Known hosts
arp -A
REM Available Routes
route print
REM Open Ports
netstat -ano
REM local file for Host - IP mapping
type C:\WINDOWS\System32\Drivers\etc\hosts
echo ~~~~~~~~~~Network Information Done~~~~~~~~~~
)