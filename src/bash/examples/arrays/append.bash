#!/bin/bash -ue

# This is an example of how to append to an array in bash.
# Note that if you a new value to be added to the array
# a variable you must quote the value because if it contains
# spaces then each separate word is going to be added to the
# array as a separate element.
# This means that the same syntax can be used to add arrays to
# arrays (see the example at the end)
#
# References:
# - https://stackoverflow.com/questions/1951506/add-a-new-element-to-an-array-without-specifying-the-index-in-bash

my_array=()
my_array+=('foo')
my_array+=('bar')
printf "%s\n" "${my_array[@]}"
echo "==============="
value="this is a value"
my_array+=("$value")
printf "%s\n" "${my_array[@]}"
echo "==============="
other_array=(a b c)
my_array+=("${other_array[@]}")
printf "%s\n" "${my_array[@]}"
echo "==============="
