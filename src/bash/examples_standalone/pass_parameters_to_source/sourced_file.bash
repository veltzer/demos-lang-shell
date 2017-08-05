# When you source a file like this "source [filename] [params...]" or
# ". [filename] [params...]" you get all the parameters in the regular
# variabes: $1, $2, ... and $*
# 
# References:
# - https://unix.stackexchange.com/questions/5024/passing-a-variable-to-a-bash-script-when-sourcing-it-in-another-bash-script

echo "\$1 is [$1]"
echo "\$2 is [$2]"
echo "\$* [$*]"
