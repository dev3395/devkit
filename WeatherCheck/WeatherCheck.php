#!/usr/bin/php
<?php
// HISTORY
// StaticID: DX1RG20170313T632s58
// Purpose: Sample PHP app to get temperature for a specified zip code
// 2017-03-13 09:43:23: First version

// INFO
// This is a PHP file but you can set to be executable from command line by setting first line to:
	#!/usr/bin/php
// BTW, if you have another blank line or any text above the <?php line besides the #! line then it will be included in the response, which you probabl don't want.'
// Then you can call this from the command line, using ./weather.php
// Will probably have to set permissions on the file like this: chmod u+x apikey.txt

// var_dump($argv);

$sample_location = "10001"; //default sample zipcode for New York in case no arguments passed

if ($argc > 1) {
	
	$input = $argv[1];

	if (is_numeric($input)) {
		$weather_location = $input;
		//TODO: Better parsing to validate zipcode
	}
	else {
		// TODO: Add parsing state/city format
		// For now now just plug in the sample
		$weather_location = $sample_location;
     }
}
else {
	$weather_location = $sample_location;
}

getTemperature($weather_location);

function getTemperature($zipcode)
{
	// Weather Underground API Notes
	// Need an API key to use their API
	// Register, configure and see stats on their dashboard https://www.wunderground.com/weather/api
	// The Dashboard has graphs showing usage times, which can be useful for debugging
	// It's free at Developer level -- up to 10 requests per minute and 500 per day
	// If you exceed the limits the request will fail, but they also give you "raindrops" you can use to reset it ocassionally. They give 3 raindrops to start and 1 more per week.
	// Can also get another raindrop for every 2500 clicks referred using your referral URL. Example: include a link like this in an HTML page <a href="https://www.wunderground.com/?apiref=abfae0ec96741d2a">weather</a>
	
	
	// Read your Weather Underground API key from local apikey.txt file.
	$key = file_get_contents('WeatherAPIkey.private', true);
	
	//Split the string and take just first line. Otherwise $key could include a line break that will mess up the URL string
	$key = strtok($key, "\n");

	// Set up the URL including the $key and $city variables
	// This URl would work if ABC12345 was a valid key:
	// http://api.wunderground.com/api/ABC12345/geolookup/conditions/q/FL/Miami.json
	$url = "http://api.wunderground.com/api/$key/geolookup/conditions/q/$zipcode.json";
	
	
	// Get a JSON file with the results;
	$weather_json = file_get_contents($url);
	
	// This would show the full contents. The file is actually hundreds of lines long with lots of data for multiple weather stations.
	// print $weather_json;
	
	//Parse the JSON file to pull out just the temperature;
	parseWeather($weather_json);

}

function parseWeather($json_string){
	$parsed_json = json_decode($json_string);
	$location = $parsed_json->{'location'}->{'city'};
	$temp_f = $parsed_json->{'current_observation'}->{'temp_f'};
	echo "${location} temp: ${temp_f}\n";
}
?>