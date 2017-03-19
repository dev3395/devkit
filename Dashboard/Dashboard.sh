#!/bin/bash

#OLD: See PHP version


#History

# 2017-03-11 18:43:19 Test change from web2
# 2017-03-19 06:28:17 AM: Working
# 2017-03-19 08:53:15 AM: Switched to PHP version -- Generally more useful and regex is better there


if [ $# -eq 0 ]
	then
	#	echo "Input Parameters: None"
	uptime
	else
		#echo "Input Parameter #: $#"
		#echo "Input Parameter 1: $1"

		if [ $1 = "beep" ]
		then
		afplay /System/Library/Sounds/Basso.aiff
		afplay /System/Library/Sounds/Pop.aiff
		afplay /System/Library/Sounds/Pop.aiff
		fi
 fi

