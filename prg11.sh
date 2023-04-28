#!/bin/bash
#print number of volume groups in this system
#Also print number of logical volumes for each vg
count=0 $vgcount sent to sero as initial value
for i in `vgs -o vgname --noheading`
do
  ((count++))
done
echo "There are $count volume group in this system $ (hostname)"
#print number of logical volumes. For every vG, get the lvs count
t=0 #Total lv counts set to zero 
for i in `vgs -o vgname --noheading`
do
  lcount=0 #lcount is to count number of lvs. set its initial vallue to zero
  for j in `lvs $i -o lvname --noheading` #for every vg, count number of lvs
  do
    ((lcount++))
  done #Inner for loop ends hear
  echo "Found $lcount lvs in $i volume group"
  t=`expr $t + $lcount`
done #outer loop ends
echo "The number of total logical volumes are $t"
#End 
