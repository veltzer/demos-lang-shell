#!/bin/bash -u

<<'COMMENT'

This example shows that 'set -e' will also cause script termination
if a bash function is called and returns an error (!=0)

COMMENT

function func() {
	return 1
}

echo before
set -e
func
echo after
