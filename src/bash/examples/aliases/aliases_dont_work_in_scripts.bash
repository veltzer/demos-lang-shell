#!/bin/bash -u

# This example shows that you can define aliases in scripts and they
# are kept by bash but they do not work by default.
# You need the 'shopt -s expand_aliases' to make aliases expand.

# show that there are no aliases
alias
# define an alias
alias foo=ls
# lets see if it worked
alias foo
foo
shopt -s expand_aliases
foo
