#!/bin/bash 

echo "MENU:\n
1. List of all files\n2. Processes of the User\n3.Today's date\n4. logout\n"

echo "Enter you choice."
	read opt

	case "$opt" in

	1) ls -l ;;
	2) ps ;;
	3) date ;;
	4) bye ;;
	*) echo "Enter an option given above." ;;

esac


	
