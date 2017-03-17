<?php
/*
	HISTORY
	StaticID: DX1RG20170313T1242s16
	Purpose: PHP template
	2017-03-13 12:42:34 : First version

	INFO
	To allow execution from command line, set first line to: #!/usr/bin/php
	To call from command line: ./filename.php
	Any text above the <?php line besides the #! line  will be included in the response, which you probabl don't want.
*/
	
include 'DevKitCore.php';

if ($argc > 1) {
	print "Argument count: $argc\n";
	print "Argument 1:     $argv[1]\n";
	// var_dump($argv);
	}

const CONFIG_FILE_NAME = "config.json";

global $config_log_file;
global $logfile;

main();

function main()
{
	global $logfile;
	
	print "Starting main loop\n";
	
	readConfig(CONFIG_FILE_NAME);
	
	logToFile($logfile, "Configuration file and logging enabled");
	logToFile($logfile, "Continuing with main loop");
		
}
?>