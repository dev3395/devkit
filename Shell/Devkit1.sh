#!/bin/bash


#History
2017-03-11 v2: Cleaned up some

#This is a block comment with guidelines, including ones about block comments
<<"COMMENT"
	GUIDELINES

	Block Comment Approach: Void Quoted Here-Document
		The most versatile and safe method is putting the comment into a void quoted here-document, like this
		This long comment text includes ${parameter:=expansion}
		`command substitution` and $((arithmetic++ + --expansion)).
		Could also do by enclosing in an "if false then fi" block but stray syntax issues could cause probles
		See http://stackoverflow.com/questions/1444367/commenting-out-a-set-of-lines-in-a-shell-script for more info

	Running This Script
	To Run it from the terminal
	1. Navigate to the folder it's in
	2. Adjust the permissions with chmod a+x HelloWorld.sh
	3. Type this to execute: ./HelloWorld.sh
	

	Syntax Guidelines
		Case sensitive variables
		No spaces before after = sign: A=3, not A = 3
COMMENT


<<"COMMENT"
echo "I've commented this out for now"
echo "This too
COMMENT

#---------------------------------------------------------------
<<"COMMENT"
	PARAMETER EXAMPLES
COMMENT
printf "\n\n_________________________________\n"
printf "Start Time: `date` \n\n"

if [ $# -eq 0 ]
  then
    echo "Input Parameters: None"
  else
	echo "Input Parameters: Supplied"
	echo "Input Parameter #: $#"
	echo "Input Parameter 1: $1"
    echo "Input Parameter 2: $2"
 fi


#---------------------------------------------------------------
<<"COMMENT"
	MATH EXAMPLES
COMMENT

A=3
B=25 #Can put let before; not sure if changes anything
Total=$(expr $A + $B)
echo "The total of $A plus $B is $Total"
echo 
#---------------------------------------------------------------
<<"COMMENT"

COMMAND EXAMPLES

COMMENT

#Can just run terminal commands normally here
uptime

#Here's a calendar
echo
echo "Calendar below..."
cal	

#Also embed commands by enclosing in backticks
date
echo "The date is `date`"
echo "The ping is `ping 172.16.1.1 -c1`"


#---------------------------------------------------------------
<<"COMMENT"
IF / THEN EXAMPLES

Key Points:
 - Need bracks with spaces on the inside and a semicolon
 - Different operators for strings and math
COMMENT

#String Example
LastName="Seinfeld"
if [ $LastName = "Seinfeld" ];
then
	echo "Hello Jerry"
fi

#Math example
A=5
if [ $A -eq 5 ];
then
	echo "Yes it equals 5"
fi
	
#More math, condensed to line line
A=6
if [ $A -gt 4 ]; then echo "It's greater"; fi


