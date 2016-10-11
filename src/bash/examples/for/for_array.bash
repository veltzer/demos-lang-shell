#!/bin/bash -u

<<'COMMENT'

This example shows how to iterate an array of elements

NOTES:
- the double quotes is important to not break elements which
have space within them like the "yellow green" in the example.

COMMENT

arr=(red "yellow green" blue)

for x in "${arr[@]}"
do
	echo $x
done
