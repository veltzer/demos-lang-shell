#!/bin/bash

: '

This is an example of how to create color output from a shell script.

References:
http://www.ngolde.de/farben2.sh

'

for attr in 0 1 4 5 7;do
	echo "----------------------------------------------------------------"
	printf "ESC[%s;Foreground;Background\n" $attr
	for fore in 30 31 32 33 34 35 36 37; do
		for back in 40 41 42 43 44 45 46 47; do
			printf '\033[%s;%s;%sm %02s;%02s  ' $attr $fore $back $fore $back
		done
		printf '\n' 
	done
	printf '\033[0m'
done
