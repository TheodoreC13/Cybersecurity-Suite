#!/bin/bash 
#
# Description:
# Basic Bash Scripting reference
# Most information taken from the book "Cybersecurity Ops with Bash" - Paul Troncone
# Consider referencing https://github.com/b52src/Diag-Script/blob/master/bmi-diag.sh
# 
# Usage:


# Consider using !/usr/bin/env bash to make this script more portable

# Type command can be used to determine whether something is a keyword, built-in, command, or none
type pwd
# would output builtin
type ls
# would be a file

# use compgen to determine what commands, built-ins, and keywords are available to you. -c commands -b built-ins -k keywords
compgen -c
# built-ins and keywords are faster than files, especially when invoked in a loop
# usual stdin/stdout/stderr use
# file input/output redirection is easy, file descriptor 0 is input fd 1 is output fd 2 is error
script.sh < data.in > results.out 2> err.msgs
# you can combine error to the same output
script.sh < data.in > results.out 2>&1
# this is so common that there's a shorthand
script.sh < data.in &> results.out
# you can discord error messages (or output) by redirecting to /dev/null
script.sh < data.in > /dev/null
# tee command will put output both to CLI and output
script.sh < data.in | tee results.out
# < > single for create/truncate << >> double for append
script.sh < data.in &>> results.txt
# & will run a command in the background
script.sh > results.out &

# will list current running jobs
jobs
# use fg and the job number to bring to foreground
fg 1
# if your task is currently still executing you can use Ctrl+Z to suspend and then bg to continue the process in the background

# output info to screen using echo
echo "Hello world."
# printf allows for additional formatting
printf "Hello world.\n"

# Variables
myint = 5
# Strings can be double or single quotes, must be double to ref another variable
myvariable = 'String'
mysecondvariable = "My 2nd variable is also a $myvariable"
shellcommandstorage = $(whoami)
# you can pipe together multiple commands using $ ( )
# $# is number of parameters, $x is parameter number (starts at 0, command name is 0)
./examplescript.sh -a -b -c
# $# = 3, $0 is ./examplescript.sh, $1 is -a, $2 is -b, $3 is -c

# user input
read MYVAR 
echo "$MYVAR"

# conditionals, reminder that a 0 return on bash = true, this is not true for many programming languages
# with a pipeline x | y | z only the last command's sucess / failure determines conditional. 
if x | y | z
then # Z is true
	# do something
else # Z is false
	# do something else
fi

# basic file exists confirmation \ -d directory -e file -r file + readable -w file + writable -x file + executable
if [[ e $FILENAME ]]
then 
	echo "$FILENAME exists"
fi
# to test less than / equals / greater than use -lt -eq -gt NOT > < =
if [[ $num1 -eq $num2]]
fi
# to do numerical comparison with normal signs do this, empty / unset variables are 0
if ((val < 12))
fi

# LS only runs if CD succeeds
cd $DIR && ls
# Echo only prints if CD fails
cd $DIR || echo "CD failed"
# [[]] doesn't need an if
[[ -d $DIR ]] && ls "$DIR" 
# that does the same as if -d then ls

#loops
i=0
while (( i < 1000 )) 
do
	echo $i
	let i++
done
for ((i=0;i<1000;i++))
do
	echo $i
done

# function
# unless declared with 'local' variables are global
# if a function prints a result and you want that result use
# RETVAL=$(myfunction args)
function myfunction()
{
	#body
}
myfunction var1 var2 var3

# pattern matching
# *  matches everything
# ?  matches one character so program.? will return program.c but not program.py or program.sh
# [] matches any one character from the square bracket
#		can speicfy a range by using a dash like [0-9]
#		^ or ! would match anything but what is listed in the bracket so [^abc] or [!abc] would match anything not abc
#		[:alum:] alphanumeric [:alpha:] alphabet [:ascii:] ascii [:lower:] lowercase [:upper:] uppercase and more
# extglob for even more compelx pattern matching
# PATTERNS ARE NOT REGULAR EXPRESSIONS

# OS detection
if type -t wevtutil &> /dev/null
then 
	OS = Windows
elif type -t scutil &> /dev/null
then 
	OS = macOS
else OS = Linux
fi
echo $OS

# regex
# anything with [extended] needs to be run with egrap or grep -e
# . will match on and character other than newline.
# [extended] ? will make any item that preceeds it optional. T.?o will match both "Two" and "To"
# * matches the preceeding item 0 or more times
# [extended] + same as * but requires at least 1 appearance
# \ to escape special character meanings
# ^ Anchor a pattern to the beginning of a string or line
# $ Anchor a pattern to the end of a string or line

# {} Quantifiers specify the amount of times an item must appear consecutively T{5} 5 times in a row, T{2-4} 2-4 times in a row
# () we can group characters
# [] brackets are used to define character classes and lists of acceptable characters
# [abc] a | b | c 
# [1-5] any digit 1 - 5 
# [a-zA-Z] any upper or lowercase character a-z
# [0-9 +-*/] any digit + these math symbols
# [0-9a-fA-F] any hexadecimal digit
# Perl shortcuts (not supported by egrp. use grep -P)
# \s whitespace \S non-whitespace 
# \d digit		\D non-digit
# \w word		\W not word
# \x hex number 
# Back referencing : 
egrep '<([A-Za-z]*)>.*</\1>'
# this would match any HTML tag with the format <a-zA-Z> </a-zA-Z>
#

# grep searches content of files for a given pattern and prints any line where pattern is matched
# grep flags: 
# -c count number of lines that match pattern
# -E enable extedned regular EXPRESSIONS
# -f read search pattern from provided file, files can contain more than 1 file with each line containing a single pattern
# -i ignore character case
# -l print only the filename and path where pattern was found
# -n print the line number of the file where pattern was found
# -P enables perl regex engine
# -R,-r recursively search subdirectories
grep -R -i 'password' /home 
# searches home and all subdirectories's files for any line containing "password" ignoring case
