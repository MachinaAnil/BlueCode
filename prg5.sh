#!/bin/bash
#demonstrate c style for loop structure
#print natural numbers for the given upper limit
read -p "Enter the upper limit to print natural numbers:" n
for ((i=1;i<=n;i++))
do
  echo $i
done
