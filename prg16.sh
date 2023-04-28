#!/bin/bash

echo "Enter your Name"
read name
case $name in
sanjeevi|SANJEEVI|sanjeevi)
                           echo "Entered eas $name"
                            ;;
*)
  echo "In the defaults option ... Entered was $name"
  ;;
esac
