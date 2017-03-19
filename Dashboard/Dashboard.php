#!/usr/bin/php
<?php
		$uptime = shell_exec('uptime');
		$pattern = "~\s[0-9]\sdays~";
		
		$success = preg_match($pattern, $uptime, $match);
		if ($success) {
		echo "Uptime:" . $match[0]; 
		}
?>