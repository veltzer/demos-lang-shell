#!/usr/bin/ksh -u

<<'COMMENT'

This example shows how to work with files, reading them line by line.

http://www.cyberciti.biz/faq/unix-howto-read-line-by-line-from-file/

COMMENT

while IFS= read line
do
        # display $line or do somthing with $line
	echo "$line"
done < /etc/passwd
