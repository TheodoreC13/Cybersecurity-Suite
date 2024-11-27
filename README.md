# Cybersecurity Suite Home Lab / Project Collection
This repository contains a collection of mini-projects I've worked on relating to cybersecurity. These projects are intended as proof of concept or knowledge demonstrations to help solidify my understanding of various security concepts and techniques. They are not production-ready and are primarily for educational purposes. Each project focuses on exploring specific aspects of cybersecurity, from host based defense to network reconaissance and basic exploitation. 

## Projects
* Host IDS for Linux/Windows
	A very simple host-based Intrusion Detection System (IDS). There is one version for Linux and one version for Windows. This tool is aimed at detecting suspicious activities on a system by monitoring important files, serving as a basic introduction to host-based security monitoring. This is a very old implementation. If I were to rewrite this today I'd hook a lot of the windows API for better monitoring of a system.
* Host Enumeration for Linux/Windows
	These Scripts perform basic enumeration of system information on both Linux and Windows machines, looking for open permissions, running services, system permissions, open ports, and more all in effort to discover any potential vulnerabilities or misconfigurations on the target host. This helped me learn more about the basics of host exploitation and how to both conduct and defend against these probes.
* Network Reconissance Script
	A script for performing basic network reconissance, including scanning IP ranges, identifying open ports, and live host detection. It is foundational tool for understanding network reconissance and it's role in the broader cybersecurity attack lifecycle. I gained a lot of insight about network discovery, misconfigurations, and subnetting via this project. 
* Encryption Wrapper
	A very basic wrapper script to decrypt and run an encrypted script. I used this for a few CTFs.
* [Basic Trojan Horse](https://github.com/TheodoreC13/Basic-Hash-Collision-Trojan-Program)
	This is a basic trojan horse program utilizing an md5 hash collision. 
* [SOC Automation Home Lab Project](https://github.com/TheodoreC13/SOC-Automation-Project)
	This project automates the detection and response workflow in a SOC environment. It leverages Wazuh for threat detection on a Windows 10 VM and integrates SYSMON for enhanced logging capabilities. The setup includes running the Wazuh dashboard and TheHive on DigitalOcean droplets, with Shuffler.io orchestrating the workflow. Detections are sent to VirusTotal for analysis, and alerts are managed in TheHive, with notifications sent to analysts via Email. 
* Reverse Engineering / Binary Analysis
	A collection of Crackmes I've completed and a journal of my experiences doing them. Repo coming soon. 
	
## Upcoming Projects
* IoT Router Firmware Vulnerability Assessment
* IDS rewrite
* Report Parsing 

## Usage Disclaimer
These projects are for educational purposes only and are intended to demonstrate fundemental cybersecurity concepts. They should never be used for illegal activities or unauthorized access to systems / networks. All code should be run in controlled, ethical, and authorized enviornments such as personal labs, with appropriate permissions. 

I do not condone any form of hacking or cyber attack on systems without explicit consent. Always ensure that you have proper authorization before conducting anyform of penetration testing or security assessments. 

## Contributions
This is a collection of studies for educational purposes only. Feedback is appreciated but contributions aren't nessessary. 
