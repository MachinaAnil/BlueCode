#!/bin/bash
#print the content of a file
#Read the filename from keyboard
read -p "Enter the absolute path of the filename:" fname
#check if file exits (-e option) and its a regular file (-f option)
if [ -e $fname ] && [-f $fname ]
then
        #user exec command to read the file contents line by line
          #if the file reaches end of the file, the read command fails to  read it; this make while loop to break
        exec < $fname
        #then above line reads entire file and keeps all the link in the read buffer.
        #Now read the 'read buffer' till end of its line. once eof reach, the read command returns non zero while read data 
        # where data is variable name. Entire line is assigned to variable data
       while
       do
       echo $data
      ((count++))  #to check number of lines
      done #loop exits when read command returns non-zero (unsuccess) ie EOF
      echo "Number line in the file $fname: $count"
else
     echo "File $fname does not exits.. Try again"
fi
#End of the script
