#!/bin/bash -u

<<'COMMENT'

This example explores writing an empty function

The main point is that you cannot write a completely empty
function in bash as it is a syntax error. If you want an empty
function then use the ':' bash builtin which does nothing.

References:
- https://stackoverflow.com/questions/30998558/empty-function-in-bash

COMMENT

function func() {
	:
}

func
