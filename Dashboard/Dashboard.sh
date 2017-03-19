#!/bin/bash

#History

# 2017-03-11 18:43:19 Test change from web2
# 2017-03-19 06:28:17 AM: Working
# 


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

