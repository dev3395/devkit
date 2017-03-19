<?php

function readConfig()
{
	global $config_log_file;
	global $logfile;
	
	// Read local config file
	$configString = file_get_contents(CONFIG_FILE_NAME, true);
	//print $configString;
	
	//Split the string and take just first line. Otherwise $key could include a line break could cause problems for the variable
	//$line1 = strtok($configString, "\n");
	//print $line1;

	//For JSON files
	//print "\nConfig values: \n";
	$parsed_json = json_decode($configString);
	
	$config_log_file = $parsed_json->{'system_config'}->{'log_file'};
	//print $config_log_file . "\n\n\n";
	
	$logfile = $config_log_file;
	print "Logging configured. See messages in: $logfile\n";

	print "Reminder -- new output is probably in the DEBUG LOG FILE *** : $logfile\n";
	$msg= "----------------------\nStarting logging in $logfile";
	logToFile($logfile, $msg);
	
	$config_computer_name = $parsed_json->{'system_config'}->{'computer_name'};
	//logToFile($logfile, $config_computer_name);

	//User configuration
	//$config_user_name = $parsed_json->{'user_config'}->{'user_name'};
	//logToFile($logfile, $config_user_name);
}

function logToFile($filename, $msg) 
{  
	$fd = fopen($filename, "a"); 

	date_default_timezone_set('UTC');
	$str = "[" . date("Y/m/d h:i:s", mktime()) . "] " . $msg;  

	fwrite($fd, $str . "\n"); 
	fclose($fd); 
} 
	
	
	function writeToFile($filename, $msg) 
	{  
		$fd = fopen($filename, "a"); 

		date_default_timezone_set('UTC');
		$str = "[" . date("Y/m/d h:i:s", mktime()) . "] " . $msg;  

		fwrite($fd, $msg . "\n"); 
		fclose($fd); 
	} 
		
?>