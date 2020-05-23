#!/bin/bash

echo Welcome to the coin flip program

read -p "How many times do you want to flip the count" iteration

#variables
headWinCounter=0
tailWinCounter=0


for ((count=0;count<$iteration;count++))
do
	flip=$((RANDOM%2))

	if [[ $flip -eq 1 ]]
	then
		((headWinCounter++))
	else
		((tailWinCounter++))
	fi
done

echo Number of times HEAD won: $headWinCounter
echo Number of times TAIL won: $tailWinCounter


