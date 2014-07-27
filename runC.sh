#!/bin/bash 
#Program that helps the user edit, compile and run their code easily 

clear
#Clears the screen so that everything looks clean

file=`ls -t *.c | head -n 1`
#Svaing last used C file 

clear

echo "\n\nDo you want to \n1.Create A New File\n2.Edit Your File\n3.Compile Code\n4.Run Executable\n"
echo "Choice: \c" > /dev/tty
#\c to keep the cursor there

read choice
#Reads input

case $choice in

        1) 	echo "Enter Your File Name: \c"
                read newfile
                echo "\n"
                nano $newfile.c                                  ;;



	3)	echo "Enter Exe File Name: \c" >  /dev/tty
		read bin
		echo $bin > binsave 

#We are saving the exe file in binsave file so that we can access it later for the run case
		
		echo " "
		gcc "$file" -o $bin && echo "File compiled succesfully." ;;
	
	2)	nano $file ;;

	4)	./`cat binsave` || echo "\nPlease Compile Your Program." ;;
#this reads the exe file stored in file and appends it with ./ to give proper output

	*)	echo "Enter one of the options mentioned above." ;; 
#Any other choice other than 1,2,3 is given this output

esac
#end of case
#end of shell script
