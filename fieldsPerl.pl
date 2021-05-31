#!/usr/bin/perl
my $fname = "/etc/passwd";
my $pattern = shift;
open(FILE, $fname) or die("can't open $fname\n");
while(<FILE>){
	$line = $_;
	@fields = split/:/;
	if($fields[4] =~/$pattern/i){
		print $line;
	}
}
close(FILE);
#Андреев
