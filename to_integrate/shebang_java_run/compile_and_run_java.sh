#!/bin/bash -eu
tail -n +2 $1 > /tmp/$1
javac /tmp/$1
cd /tmp
java $1
