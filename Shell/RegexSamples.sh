#!/bin/bash


KM=$KMVAR_Parm1



echo "Got the parameter $KM"

function regcheck {
	if [[ $sample =~ $regex ]]
		then
			echo " matched in pattern: $sample"
		else
			echo " no match in pattern: $sample"
	fi
}


# Unit Test
echo "--- Unit test START"
sample="ABCdef Vandelay 123458 8"
regex='[7-9].'
regcheck sample
echo "--- Unit test END"
echo

# Main Purpose
echo "--- Main START"
sample="
{
	TITLE titletext1b
	body1
	}
	}
	{ section2
	TITLE titletext2b
	body2
	}"

sample="{ text TITLE titletext1b text more }"


sample="{ text TITLE titletext1b text more }
"

echo "Sample:" $sample
echo
regex='(\{.*\s)(TITLE.*\s)(.*\s*)(\}?)'
regcheck sample

