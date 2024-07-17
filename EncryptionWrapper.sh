#!/bin/bash 
# 
# Basic Encryption Wrapper
# first encrypt script with 
# openssl aes-256-cbc -base64 -in innerscript.sh -out innerscript.enc -pass pass:mysecret

encryptedScript = 'textgoeshere'

read -s password

decryptedScript = $(echo "$encryptedScript" | openssl aes-256-cbc -base64 -d -pass pass:"$password")

eval "$decryptedScript"
