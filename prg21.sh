#!/bin/bash
read -p "Enter the first string:" name1
read -p "Enter the second string:" name2
if [[ $name1 -eq $name2 ]]
then
 echo "the entered two strings are equal"
else
 echo "you entered strings are not equal"
fi
