#!/bin/bash
#Demonstrate while loop
echo "Read upper limit to print natural numbers:"
read n
i=1
while [ $i -le $n ]
do
  echo $i
  ((i++))
done
#End
