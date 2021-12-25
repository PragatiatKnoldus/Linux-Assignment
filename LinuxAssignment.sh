#!/bin/bash

flag=0
ch="n"
while [ $flag -eq 0 ]
do	
	echo "Please enter the exercise number which you want to execute (1-6) : "
	read input
	case $input in
		1) #Exercise-1
			echo "Shell Scripting is Fun!";;
		2) #Exercise-2
			var1="Shell Scripting is Fun!"
			echo $var1;;
		3) #Exercise-3
			var1=$(hostname)
			echo "This script is running on $var1";;
		4) #Exercise-4
			animals="man bear pig dog cat sheep" 
			for var1 in $animals	
			do 
				echo $var1
			done;;
		5) #Exercise-5
			echo "This script will exit with 0 exit status."
			echo "exit status : "$(echo $?);;
		6) #Exercise-6
			file_count () {
				echo "The present working directory i.e $(pwd) has total $(ls -1|wc -l) files."		
			}
		   file_count;;
	        *) echo "Sorry! Wrong choice";;
	esac
	echo "Do you want to enter again (y/n) : "
	read choice
	echo `clear`
	if [ "$choice" = "$ch" ]
	then
		break
	fi
done
