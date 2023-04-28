#!/bin/bash
#Demonstrate case statement
read -p "Enter the Os name (Ex: solaris, aix, linux, unix, windows, MacOS):" os
case $os in
    solaris)

           echo "The os selected is solsris"
             ;;
     aix)

          echo "The os selected is aix"
            ;;
   linux)
           echo  "The os selected is solsris Linux"
           ;;
   unix)
          echo  "The os selected is solsris unix"
           ;;
   Windows)
           echo  "The os selected is solsris windows"
           ;;
   MacOS)
           echo  "The os selected is solsris MacOS"
           ;;
      *)
          echo "You entered other solaris,aix, linux, unix, windows, MacOS.."
           ;;
esac #case statement Ends here
#End of program
