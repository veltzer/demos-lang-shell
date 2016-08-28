#!/bin/sh

<<'COMMENT'

This example shows how to combine xargs and output from commands
which give one output per line.

Note that the -d "\n" feature is a GNU only feature.

References:
- http://serverfault.com/questions/127904/newline-separated-xargs

COMMENT

cat $0 | xargs -n 1 -d "\n" echo
echo "==================="
cat $0 | xargs -d "\n" echo
echo "==================="
cat $0 | xargs -n 1 echo
echo "==================="
cat $0 | xargs echo
