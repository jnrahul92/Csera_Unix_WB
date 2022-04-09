#!/usr/bin/env bash
filenum=$(ls | wc -l)
guess=0

function guess_filenum {
	read guess
	if [[ $guess -eq $filenum ]]
	then
		echo "You are correct! Congratulations!"
	elif [[ $guess -gt $filenum ]]
	then
		echo "Your guess is higher. Please choose a lower number"
	else
		echo "Your guess is lower. Please choose a higher number"
	fi
}

while [ $guess -ne $filenum ]
do
echo "Guess the number of files in current directory"
guess_filenum
done

