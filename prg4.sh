#!/bin/bash
count=0
for i in `lvs --noheading -o lv_name`
do
  echo $i
  ((count ++))
done
echo " we have $count lvs in our system "

for i in `vgs --noheading -o vg_name`
do
  echo $i
  ((count ++))
done
echo " we have $count vg in our system "
