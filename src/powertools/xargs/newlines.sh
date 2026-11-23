#!/bin/sh

# The block below documents what this example shows.
: <<'COMMENT'

This example shows how to combine xargs and output from commands
which give one output per line.

Note that the -d "\n" feature is a GNU only feature.

References:
- http://serverfault.com/questions/127904/newline-separated-xargs

COMMENT

xargs -n 1 -d "\n" echo < "$0"
echo "==================="
xargs -d "\n" echo < "$0"
echo "==================="
xargs -n 1 echo < "$0"
echo "==================="
xargs echo < "$0"
