!#/bin/bash 

clear
#Clears the screen so that everything looks clean

file=`ls -t *.java | head -n 1`
#Svaing last used Java file
clear
echo "\n\nDo you want to \n1.Create a new File\n2.Edit Your File\n3.Compile code\n4.Run Executable\n"
echo "Choice: \c" > /dev/tty
#\c to keep the cursor there

read choice
#Reads input

case $choice in

		
		2) nano $file 				 		;;

		3) javac $file 		
		   echo "\n\nCompiled Succesfuly.\n\n"			;;

		4) echo $file | nano fileyouwillneversee.txt
		   clear
		   echo "\nOutput:\n"
	           exe=`awk -F"." '{print $1;}' ./fileyouwillneversee.txt.save`
		   java $exe || echo "\nPlease Compile Your Program."
		   echo "\n"
		   rm fileyouwillneversee.txt.save  			;;
				
		1) echo "Enter your file name: \c"
		   read newfile
		   echo "\n"
		   nano $newfile.java					;;

	        *) echo "Enter the one of the options mentioned above." ;;

#Any other choice other than 1,2,3 is given this output

esac

#end of case 
#end of Shell Script

