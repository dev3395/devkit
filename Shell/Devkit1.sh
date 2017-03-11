#!/bin/bash

#History
# 2017-03-11 17:42:18 Test change from MBP

# GUIDELINES
#	
# Running This Script
# To Run it from the terminal
# 1. Navigate to the folder it's in
# 2. Adjust the permissions with chmod a+x devki1.sh
# 3. Type this to execute: ./devkit1.sh

# Syntax Guidelines
#	Case sensitive variables
#	No spaces before or after the equals sign, so use A=3, not A = 3



#Below is a comment block done with the "Void Quoted Here-Document" hack for shell block comments
<<"COMMENT"
 This text is commented out using the "Void Quoted Here-Document" approach. It's considered the most versatile and save method for block comments in shell. It will exclude everything, including ${parameter:=expansion} `command substitution` and $((arithmetic++ + --expansion)).

 Could also do by enclosing in an "if false then fi" block but stray syntax issues could cause problems

 See http://stackoverflow.com/questions/1444367/commenting-out-a-set-of-lines-in-a-shell-script for more info
COMMENT



#---------------------------------------------------------------
#STARTUP LOGGING
printf "\n\n_________________________________\n"
printf "Starting\n"
printf "Time: `date` \n\n"


#---------------------------------------------------------------
#PARAMETER EXAMPLES

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
printf "\n__MATH EXAMPLES__\n"

A=3
B=25 #Can put let before; not sure if changes anything
echo "A: $A"
echo "B: $B"

Total=$(expr $A + $B)
printf "The total of $A plus $B is $Total \n"

#---------------------------------------------------------------
printf "\n__COMMAND EXAMPLES__\n"

printf "You can just run terminal commands normally in the shell script. After this printf statement we'll get the current uptime by including the uptime command: \n"
printf "Uptime: "
uptime

# Other raw command examples to enable

# Generate a calendar
# cal	
# date


# Raw commands can be included in an echo statement inside backticks
# echo "The date is `date`"
# echo "The ping is `ping 172.16.1.1 -c1`"


#---------------------------------------------------------------
printf "\n__IF THEN EXAMPLES__\n"

#Key Points:
# - Need brackets with spaces on the inside and a semicolon
# - Different operators for strings and math


# If Then With a String
LastName="Seinfeld"
printf "Last Name: $LastName \n"

if [ $LastName = "Seinfeld" ]
then
	echo "Hello Jerry"
fi

# Math Equals Comparison
A=5
if [ $A -eq 5 ]
then
	echo "Yes it equals 5"
fi

# Math Greater Than Comparison
A=6
if [ $A -gt 4 ];
then
	echo "It's greater";
fi


# Condensed to line line
A=6
if [ $A -gt 4 ]; then echo "It's greater"; fi


