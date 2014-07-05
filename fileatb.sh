#!/bin/bash 


if [ $# -eq 0 ] ; then 
	exit 1
else
 
if [ ! -e $1 ] ; then 
	echo "The file does't exist"
elif [ ! -r $1 ] ; then 
	echo "The file is not readable"
elif [ ! -w $1 ] ; then 
	echo "The file is not writable"
else
	echo "The file is readable and writable"
fi

fi
