#!/usr/bin/perl
my $fname = "/etc/passwd";
my $pattern = shift;
open(FILE, $fname) or die("can't open $fname\n");
while(<FILE>){
	if(/$pattern/i){
		print;
	}
}
close(FILE);
#Андреев
