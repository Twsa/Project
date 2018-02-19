#!/usr/bin/env bash
# File: guessinggame.sh
function filenum {
	ls | wc -l
}
file_num=$(filenum)
usr_input=0
echo "How many files in the current directory?"
while [[ $file_num -ne $usr_input ]]
do 
	read usr_input
	if [ $usr_input -gt 0 ] 2>/dev/null
	then
		if [[ $usr_input -gt $file_num ]]
		then 
			echo "$usr_input is higher than the number of files in the current directory."
		elif [[ $usr_input -lt $file_num ]]
		then
			echo "$usr_input is lower than the number of files in the current directory."
		else 
			echo "Congratulations, you are right!"
		fi
	else
		echo "Please input a positive integer..."
	fi
done 

