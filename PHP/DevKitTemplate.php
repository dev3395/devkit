<?php
/*


# PURPOSE
- PHP template
- PHP basic framework with related core functions

# HISTORY:
StaticID: DX1RG20170313T1242s16

- 2017-03-13 12:42:34 : First version


# TODO:
- Add classes/methods
- Improve parameter passing


*/



include 'devkit_core.php';

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
