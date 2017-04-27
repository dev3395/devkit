#!/bin/bash

function read_example {
read -r -d '' test <<'zEOF'

  This can be 
  multiple lines of "text"
  with any quotes, including 'single' and "double"
  It will keep reading until it gets to the delimiter matching the one used above after the less than
  signs. The closing delimiter needs to be at the start of a line

zEOF

# osascript -e "$appleScr"
echo "$test"
echo "$myarray[4]"
}

function split_example {
    read -e
}

function math_example
{
printf "\n__MATH EXAMPLES__\n"

A=3
B=25 #Can put let before; not sure if changes anything
echo "A: $A"
echo "B: $B"

Total=$(expr $A + $B)
printf "The total of $A plus $B is $Total \n"
}

function ifthen_example
{

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


}


function command_example {

#---------------------------------------------------------------
printf "\n__COMMAND EXAMPLES__\n"

printf "You can run terminal commands normally in a shell script. After this printf statement we'll get the current uptime by including the uptime command: \n"
printf "Uptime: "
# uptime

# Other raw command examples to enable
# cal	
# date


# Raw commands can be included in an echo statement inside backticks
# echo "The date is `date`"
# echo "The ping is `ping 172.16.1.1 -c1`"



}



