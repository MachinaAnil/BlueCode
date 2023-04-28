#!/bin/bash
for i in varun.alclabs.in
do 
scp /var/log/messages $i:/tmp/anil
done
#End
