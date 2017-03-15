<?php


curl_simple();

function curl_simple() {
		//Example of very simple PHP curl usage. Or maybe technically it's not really using curl.
		$url = 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=nsl1&e=.csv';

		//Simple way to get basic info the way you'd read a local file using file_get__contents
		$result = file_get_contents($url);

		/*
		More advanced way using the curl library
		This is the most basic usage, without parameters or authentication
		It's the same as running the following in the terminal:
			Mac:~ dimitri$ curl 'http://download.finance.yahoo.com/d/quotes.csv?s=AAPL&f=nsl1&e=.csv'
		Which responds today (2017-03-15):
				"Apple Inc.","AAPL",140.46
		The PHP example seems to also return a 1:
			"Apple Inc.","AAPL",140.46
			1
		*/
		
		$ch = curl_init();
		curl_setopt($ch, CURLOPT_URL,$url);
		$result = curl_exec($ch);
		curl_close($ch);  
		echo($result);
	}
?>