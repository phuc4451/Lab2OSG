#Assignment: Shell Programming
#Class ID: 11
#Student ID: HE170417
#Student Name: Phan Dang Truong
#Phan Dang Truong_HE170417_ShellProgramming.sh
#!/bin/bash

clear
af=`pwd`
loop=1

while [ loop==1 ]
do
	echo "****************************************************************"
	echo -e "Please choose from the following options; type the option number \nnumber and hit the <Enter> key."
	echo -e "\na or A	To display the current directory"
	echo -e "b or B	To list names of the files in a given directory"
	echo -e "c or C	To display today's date and time"
	echo -e "d or D	To display whether a file is a simple file or directory"
	echo -e "e or E	To execute a command line."
	echo -e "q or Q	To exit the program."
	echo "****************************************************************"

	read -p "Enter your choice and hit <Enter>: " option
	case "$option" in
		a|A)	echo "$af"
			;;
			
		b|B)	echo "Please enter the directory's name"
			cd
			read currentDir
			ls -l $currentDir
			;;
			
		c|C)	date
			;;
			
		d|D) 	read -p "Please enter file name: " name
			if [[ -f "$name" ]]
			then 
				echo "$name is an ordinary file"
			elif [[ -d "$name" ]]
			then
				echo "$name is a directory."
			else
				echo "Does not exist"
			fi
			;;
		e|E) 	read -p "Please enter a command to be executed: " 	command
			if ! command -v $command
			then
				echo "$command could not be found"
			fi
			;;
			
		q|Q) 	
			echo "Bye now!"
			break
			;;
	esac
	read -p "Hit <Enter> to continue." useless
	clear
done

