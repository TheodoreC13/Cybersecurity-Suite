#include <iostream>
#include <fstream>
// Script - EncryptionWrapper.sh
// Description - Used for basic encryption
// Author - https://github.com/TheodoreC13
// Version - 1.0
// todo - Parse reports from the enumeration scripts
using namespace std;



// basic idea is to run some tools and generate a report
int main()
{
	/*
	* Transmission Control Protocol (TCP)	-	used to transmit data over an IP network.  TCP provides error checking to ensure packets are not lost in transit.
	* User Datagram Protocol (UDP)			-	transmits datagrams in a best effort method.  UDP does not include error checking.
	* Layer 7 Protocols:
    20/21		-	TCP | FTP: 20 is for file transfer, 21 is control port
    22			-	TCP | SSH/SSHFTP: SSH is for remote data trasnfer, SSHFTP uses SSH to encrypt files. Not compliant with FTP
    49			-	TCP | TACACS+: Cisco proprietary AAA services
	53			-	UDP | DNS
	67/68		-	UDP | DHCP: Network management protocol used to assign multiple private IP from a public IPv4
	80			-	TCP | HTTP
	88			-	Both| Kerberos: Network auth protocol for communication over a non-secure network
	110			-	TCP | POP: Email protocol allowing email clients to talk to servers. one way.
	123			-	UDP | Network Time Protocol: low latency used to sync timekeeping on a network
	139			-	UDP | SMB: Server Message Block , windows propritary build on NetBIOS. Allows users to remotely access servers OLD
	143			-	TCP | IMAP: Internet message access protocol , email protocol used by email clients to communicate with email servers. 2 way unlike pop
	161/162		-	UDP | SNMP: Simple Network Management Protocol , used to monitor and manage network devices on IP networks
	389			-	UDP | LDAP: Lightweight Directory Access Protocol , used to manage and communicate with directories
	443			-	TCP | HTTPS: Secure HTTP, uses TLS for encryption
	443			-	TCP | SSTP: Secure Socket Tunneling Protocol , Microsoft tech to replace insecure PPTP/L2TP/IPsec uses TLS for encryption
	445			-	TCP | SMB: Modern SMB use 445 and TCP.
	500			-	UDP | IPsec: Internet Protocol Security , uses ISAKMP for security
	587			-	TCP | SMTPS: Secure SMTP, uses TLS for encryption
	636			-	TCP | LDAPS: Secure LDAP, uses TLS for encryption
	989/990		-	TCP | FTPS: Secure FTP, uses TLS for encryption, often run on 20/21
	993			-	TCP | IMPAS: Secure IMAP, uses TLS for encryption
	995			-	TCP | POP3S: Secure POP3, uses TLS for encryption
	1812/1813	-	UDP | RAIDUS: AAA for network services
	3389		-	TCP | RDP: Windows proprietary protocol for remote connection between computers
	3790		-	TCP | Metasploit default
	3868		-	TCP | Diameter: Upgrade to Radius
	4444		-	Both| Meterpreter deafult port
	5004		-	UDP | SRTP: Secure Real Time Protocol, replaced RTP for streaming audio / video communication
	* Layer 4 Protocols:
	1723		-	TCP | PPTP: Point to Point Tunneling Protocol: DEPRECATED protocol for VPNs
	3389		-	TCP | RDP
	* Layer 2 Protocols:
	1701		-	UDP | L2TP: Layer 2 Tunneling Protocol, used to create point to point connections. Needs IPsec for encryption. Operates on data link, encapsulates packet at session
	1723		-	UDP | PPTP: Point to Point Tunneling Protocol: DEPRECATED protocol for VPNs
	*/
	
	
	//Discovery

	// Scan network using nmap -stealth scan , 
	system("nmap -sS -T3");
	system("nmap -sU -T3"); // udp ports

	// NetBios enumeration - netbios is for sharing resources and communication
	system("nbtstat");
	// SNMP enum - snmp is for device management
	system("snmpwalk");
	// LDAP enum - ldap is for information sharing 
	system("Idapsearch");
	// NTP enum - clock sync
	system("nmap");
	// DNS enum

	// pathping / netstat / dig
	
	// run either linux / windows enumeration
	// send report?

	// Fuzzer?

}