#!/usr/bin/php
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
	
include '../PHP/DevKitCore.php';

if ($argc > 1) {
	print "Argument count: $argc\n";
	print "Argument 1:     $argv[1] \n";
	// var_dump($argv);
	}

const CONFIG_FILE_NAME = "config.json";

global $config_log_file;
global $logfile;

const TIMER_INFO = "timer.txt";

$param = $argv[1];

main();

//print $param;


timer($param);

uptime();


function main() {
	global $logfile;
	
	print "Starting main loop\n";
	
	readConfig(CONFIG_FILE_NAME);
	
	logToFile($logfile, "Configuration file and logging enabled");
	logToFile($logfile, "Continuing with main loop");
	}



function uptime()
{
	$uptime = shell_exec('uptime');
	$pattern = "~\s[0-9]\sdays~";

	$success = preg_match($pattern, $uptime, $match);
	if ($success) {
	echo "Uptime:" . $match[0] . "\n";
	}
}



function timer($param)
{
	global $logfile;

	logToFile($logfile, $param);

	if ($param = "start") {
		logToFile($logfile, "yes");
	}

	$start_time = time();
	$max = 50000000;
	for ($i = 1; $i <= $max; $i++) {
		//
	}
	$y = time();
	$difference = $y - $start_time;

	//logToFile($logfile, $difference);
	writeToFile(TIMER_INFO, $start_time);
		
}
?>
