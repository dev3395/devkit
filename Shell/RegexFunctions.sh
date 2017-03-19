#!/bin/bash


function logging()
{
	printf "\n--- `date` Starting function: $@---\n"

}
function reg_check()
 {
	#logging $FUNCNAME
	
	# IMPORTANT: Need to use $@ instead of $1 to handle strings with spaces. Otherwise it just gets the first word
	# Would need a do loop to handle multiple parameters that way. See http://stackoverflow.com/questions/1983048/passing-a-string-with-spaces-as-a-function-argument-in-bash#comment24742186_1983048
	echo "Sample Text is: $@"
	if [[ $@ =~ $2 ]]
		then
			echo "Matched in pattern: $@"
		else
			echo "No match in pattern: $@"
	fi
}


function regex_example1 {
	#Simple self-contained example
	logging $FUNCNAME

	myvar="ABC123"
	pattern="[1-5]"
	
	if [[ $myvar =~ $pattern ]]
		then
			echo "Matched in pattern: $myvar"
		else
			echo "No match in pattern: $myvar"
	fi

}



function regex_example2 {
	logging $FUNCNAME

	sampleString="ABCdefg Vandelay 1234578 end of line"
	regex='[A-Z]'
	reg_check $sampleString $regex

}


function regex_example3 {
	logging $FUNCNAME

	#One line example:
	#sampleString="{ text TITLE titletext1b text more }"

	#Multi-line example
	sampleString="
	{
		TITLE titletext1b
		body1
		}
		}
		{ section2
		TITLE titletext2b
		body2
		}"

	regex='(\{.*\s)(TITLE.*\s)(.*\s*)(\}?)'
	reg_check $sampleString $regex

}

