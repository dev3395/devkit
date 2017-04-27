	#!/bin/sh
	# See notes in general Bash template about executing from terminal or Finder.

	echo "Hello"
	afplay /System/Library/Sounds/Basso.aiff
	echo $1

	if [ $1 = "beep" ]
			then
	#		afplay /System/Library/Sounds/Basso.aiff
			afplay /System/Library/Sounds/Pop.aiff
			afplay /System/Library/Sounds/Pop.aiff
			fi
	