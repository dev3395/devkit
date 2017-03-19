<?php
/*


# PURPOSE
- PHP template
- PHP basic framework with related core functions
- Style guide

# HISTORY:
StaticID: DX1RG20170313T1242s16

- 2017-03-13 12:42:34 : First version


# TODO:
- Add classes/methods
- Improve parameter passing


# STYLE GUIDE
- Based on FIG standards https://github.com/php-fig/fig-standards/blob/master/accepted/PSR-1-basic-coding-standard.md
- Basics reflected in template below
- Notes:
    - 4 spaces, not tabs
    - funtionNames
    - variable_names
    - CONSTANT_NAMES
    
- Control structure keywords MUST have one space after them; method and
function calls MUST NOT.

- Opening braces for control structures MUST go on the same line, and closing
braces MUST go on the next line after the body.

- Opening parentheses for control structures MUST NOT have a space after them,
and closing parentheses for control structures MUST NOT have a space before.


# TIPS
- To allow execution from command line, set first line to: #!/usr/bin/php
- To call from command line: ./filename.php
- Any text above the <?php line besides the #! line  will be included in the response, which you probabl don't want.
 
*/


include 'DevKitCore.php';

// var_dump($argv);


const CONFIG_FILE_NAME = "config.json";

global $config_log_file;
global $logfile;

print "\nArgument count: $argc . \n";

if ($argc >1) {
    print "\nArgument 1:     $argv[1]\n";
} else {
    //
}


mainLoop();

function mainLoop()
{
    global $logfile;
    
    print "Starting main loop\n";
    
    readConfig(CONFIG_FILE_NAME);
    
    logToFile($logfile, "Configuration file and logging enabled");
    logToFile($logfile, "Continuing with main loop");
}



?>
