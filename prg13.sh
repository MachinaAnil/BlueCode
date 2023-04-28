#!/bin/bash
#Demonstrate until loop
#Till condition becomes true, the loop executes
c=1
until [ $c -gt 11 ]
do
  echo $c
   ((c++))
done
#End
