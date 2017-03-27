#!/bin/bash

# Example of using AppleScript in a shell script

my_string="User"

# Or use parameter passed to script
# my_string=$1

echo "Hello $my_string"

# Example on one line
osascript -e 'on run argv' -e 'tell app "Finder" to display dialog "Hello " & item 1 of argv' -e 'end run' $my_string


echo "shell script code"

# AppleScript code using here doc approach for multiple lines
# Tell it key code 107 simulates the brightness down button

osascript <<EOF
tell application "System Events"
	key code 107
end tell
EOF

# More Shell code

echo "back to shell script"

uptime