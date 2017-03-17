#!/bin/bash

#History

# 2017-03-11 18:43:19 Test change from web2
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






if [ $# -eq 0 ]
	then
	#	echo "Input Parameters: None"
	uptime
	else
	#echo "Input Parameters: Supplied"
	#echo "Input Parameter #: $#"
	echo "Input Parameter 1: $1"
	#echo "Input Parameter 2: $2"
	#whoami
	#say "test"
	afplay /System/Library/Sounds/Funk.aiff
 fi

