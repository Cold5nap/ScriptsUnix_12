#!/usr/bin/php
<?
$pattern = $argv[1];
$file = fopen("/etc/passwd", "r");
while ($line = fgets($file, 200)){
	$fields = split(":", $line);
	if (eregi($pattern, $fields[4])){
		print $line;
	}
}
fclose($file);
?>
#Андреев
