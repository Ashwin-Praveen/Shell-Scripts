#!/bin/bash 


clear
file=`ls -t *.cpp | head -n 1`
echo "\n\nDo you want to \n1.Edit Your File\n2.Compile code\n3.Run Executable\n"
echo "Choice: \c" > /dev/tty
read choice
case $choice in
	
	2)	echo "Enter exe file name: \c" >  /dev/tty
		read bin
		echo $bin > binsave 
		echo " "
		g++ "$file" -o $bin && echo "File compiled succesfully." ;;
	
	1)	nano $file ;;

	3)	 
		./`cat binsave` ;;

	*)	echo "Enter the one of the options mentioned above." ;; 

esac
