#!/usr/bin/php
<?
$pattern = $argv[1];
$file = fopen("/etc/passwd", "r");
while ($line = fgets($file, 200)){
	if (eregi($pattern, $line)){
		print $line;
	}
}
fclose($file);
?>
#Андреев
