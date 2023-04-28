#!/bin/bash
#Read the varaible from the keyboard till you hit enter key(blank variable)
v=1 #assign random data to variable, so that it will not be blank
while [ -n "$v" ] #variable length must not zero length
do
   echo "Enter thr text. End with Enter key..:"
   read v
   if [ -n "$v" ]
   then
       echo "You entered $v"
   else
       echo "Existing now.."
   fi

done
#End
