//#!/usr/bin/php
<?php
// HISTORY
// StaticID: DX1RG20170313T1242s16
// Purpose: PHP template
// 2017-03-13 12:42:34 : First version

// INFO
// This is a PHP file but you can set to be executable from command line by setting first line to:
	#!/usr/bin/php
// Then you can call this from the command line, using ./filename.php
// If you have another blank line or any text above the <?php line besides the #! line then it will be included in the response, which you probabl don't want.'

// var_dump($argv);

const CONFIG_FILE_NAME = "config.json";


$sample_input = "10001"; //default sample zipcode for New York in case no arguments passed

if ($argc > 1) {
	
	$input = $argv[1];

	if (is_numeric($input)) {
		$working_input = $input;
		//TODO: Better parsing to validate numbers
	}
	else {
		// For now now just plug in the sample
		$working_input = $sample_input;
     }
}
else {
		$working_input = $sample_input;
}


//readConfig(CONFIG_FILE_NAME);
//main($working_input);

function readConfig()
{

	// Read local config file
	$configString = file_get_contents(CONFIG_FILE_NAME, true);
	//print $configString;
	
	//Split the string and take just first line. Otherwise $key could include a line break could cause problems for the variable
	//$line1 = strtok($configString, "\n");
	//print $line1;

	//For JSON files
	print "\nConfig values: \n";
	$parsed_json = json_decode($configString);
	
	$config_computer_name = $parsed_json->{'system_config'}->{'computer_name'};
	print $config_computer_name . "\n";

	$config_user_name = $parsed_json->{'user_config'}->{'user_name'};
	print $config_user_name . "\n";
	
	$config_integer = $parsed_json->{'system_config'}->{'system_number'};
	print $config_integer + 2 . "\n";

//	echo "Cofig values: ${location} temp: ${temp_f}\n";
}
?>