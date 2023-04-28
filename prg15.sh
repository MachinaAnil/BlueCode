#!/bin/bash
#Demonstrate case statemet for arithmetic operations
#Read two numbers from the command line
#If no command line arguments given, then read from the keyboard
#Check if command line arguments are entered
if [ $# -eq 2 ]
then
 echo "Found command line arguments $1 and $2 for arithmetic operations"
 num1=$1
 num2=$2
else
#read from the keyboad
echo "Command line arguments not received.. Input num1 and num2 from keyboard"
read -p "Enter first number:" num1
read -p "Enter second number:" num2
fi #reading variables done
#compute arithmetic operations now.
echo "
	MENU
	1.ADD
	2.SUBTRACT
	3.DIVISION
	4.MULTIPLICATION
	5.EXIT"
read -p "Enter your choice [1..5]:" op
case $op in
1)
  res=`echo $num1+$num2|bc`
  echo "Additon of $num1 and $num2 :" $res
  ;;
2)
  res=`echo $num1-$num2|bc`
  echo "Subtraction of $num2 from  $num1 :" $res
  ;;
3)
  res=`echo "scale=2; $num1/$num2"|bc`
  echo "Division of $num1 and $num2 :" $res
  ;;
4)
  res=`echo $num1*$num2|bc`
  echo "Multiplication of $num1 and $num2 :" $res
  ;;
5)
  echo "You have choosen to exit"
  ;;
*)
  echo "Invalid Option selected.. Exiting"
esac #Case ends here
#End of the script
#
