#!/bin/bash
if [ $# -ne 1 ]
then
  echo "you entered invalid number of arguments.. usage $0 username"
else
  echo "MENU
   1. Add User
   2. Delete User
   3. List User Atrributes
   4. Exit
   Read your choice 1-4:"


read num
case $num in
1)
 grep -w ^$1 /etc/passwd >/dev/null 2>&1
 if [ $? -ne 0 ]
 then 
   useradd $1
   echo "provide the password:"
   read -sp pass
   echo "$pass" | passwd --stdin $1 > /dev/null 2>&1
 else
  echo "cant create user... it exists ... existing.."
 fi
;;

2)
 grep -w ^$1 /etc/passwd > /dev/null 2>&1
 if [ $? -eq 0 ]
 then
   userdel -r $1
 else
   echo "cant delete user.. it doesnt exists ..."
 fi
;;

3)
  grep -w ^$1 /etc/passwd > /dev/null 2>&1
  if [ $? -eq 0 ]
  then 
    grep -w ^$1 /etc/passwd
    chage -l $1
  else
    echo "cant list user details.. it doesnt exists..."
  fi
;;

4)
  echo "you have choosen exit option...exiting.."
  ;;

*)
  echo "you have choosen invalid option.. exiting.."
  ;;
 esac
fi
