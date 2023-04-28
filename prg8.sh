#!/bin/bash
#Demonstrate infinite while loop
#use break key word to break the loop
count=1 #counter initialization
>t.out #create empty file
#while true
while :  #same as the above line
do
   read -p "Enter the text.. End this with "stop" word:" t1
   if [ $t1 = stop ]
   then
       echo "You asked me to stop.. Thank You."
       echo "You entered the below data:"
       cat t.out #print the file content before you exit.
       break
       #break statement breaks the loop; in this case while loop.
     fi
     #insert the read data into t.out
     echo $t1>>t.out
     echo "continuing the loop... now in interation $count"
     ((count++)) #increment the counter to print number of intratives
done
