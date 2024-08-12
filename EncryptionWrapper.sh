#!/bin/bash 
# 
# Script		-	EncryptionWrapper.sh
# Description	-	Used for basic encryption
# Author		-	https://github.com/TheodoreC13
# Version		-	1.0
# First encrypt the script with:
#	openssl aes-256-cbc -base64 -in innerscript.sh -out innerscript.enc -pass pass:mysecret
# This Script will decrypt and run the script

encryptedScript = 'EncryptionHash'

read -s password

decryptedScript = $(echo "$encryptedScript" | openssl aes-256-cbc -base64 -d -pass pass:"$password")

eval "$decryptedScript"
