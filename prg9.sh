#!/bin/bash
#create users .. using while loop
#
while :
do
  read -p "Enter username to add(use 'stop' to exit):" u1
  if [ $u1 = stop ] #out if begins
  then
    break
  else
  #search if the user already exists
  grep -w ^$u1 /etc/passwd > /dev/null 2>&1
  if [ $? != 0 ] #inner if begins
  then
   useradd $u1
   #set the password same as username
   echo "$u1" | passwd --stdin $u1 > /dev/null 2>&1
 else 
  echo "cant create user.. $1 user exits...continue with next user"
  fi #inner if close
fi #outer if
iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiidone #while close
