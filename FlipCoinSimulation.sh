#!/bin/bash

echo Welcome to the coin flip program

#variables
headWinCounter=0
tailWinCounter=0


while [[ headWinCounter -lt 21 && tailWinCounter -lt 21  ]]
do
	flip=$((RANDOM%2))

	if [[ $flip -eq 1 ]]
	then
		((headWinCounter++))
	else
		((tailWinCounter++))
	fi
done

if [[ $headWinCounter -eq $tailWinCounter ]]
then
	echo We have a tie
elif [[ $headWinCounter -gt $tailWinCounter ]]
then
	echo HEADS has won
else
	echo TAILS has won
fi

echo Number of times HEAD won: $headWinCounter
echo Number of times TAIL won: $tailWinCounter


