#!/usr/bin/perl -w

use strict;
use warnings;

my($i)=0;
while(1) {
	print "slowly printing $i\n";
	$i++;
	sleep(3);
}
