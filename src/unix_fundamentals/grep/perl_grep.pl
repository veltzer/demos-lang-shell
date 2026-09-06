#!/usr/bin/perl

use strict;

my($expression)=$ARGV[0];
my($file)=$ARGV[1];

open(my $fh,"<",$file) || die("unable to open file [$file]");
my($line);
while($line=<$fh>) {
	if($line=~/$expression/) {
		print($line);
	}
}
close(FILE) || die("unable to close file [$file]");
