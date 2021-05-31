#!/usr/bin/perl
$pattern = shift;
while (($name,$passwd,$uid,$gid,
	$quota,$comment,$gcos,$dir,
	$shell,$expire) = getpwent){
	if ($gcos =~ /pattern/i){
		print "$gcos\n";
	}
}

#!/usr/bin/perl
$pattern = shift;
while (@fields = getpwent){
	if ($fields[6] =~ /$pattern/i){
		print "$fields[6]\n";
	}
}
#Андреев
