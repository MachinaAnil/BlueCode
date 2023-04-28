#!/bin/bash

echo "enter var1 and var2"
read v1;read v2
opt=""
echo "enter arth. operator:+,-,*. Type e for exit"
read opt
case $opt in
+) echo `echo $v1 + $v2 |bc` ;;
-) echo `echo $v1 - $v2 |bc` ;;
\*) echo `echo $v1 \* $v2 |bc` ;;
e) exit ;;
*) echo "$opt is invalid operator.."
esac
