#!/usr/bin/env bash
# File: guessinggame.sh

true_number=$(ls -la | egrep "^-.*" | wc -l)
echo $true_number
function help_guess {
if ! [ $1 -eq $1 ] || [[ $1 = "" ]]
then 
 echo "WARNING: Enter a non-negative number using digits only!"
elif [[ $true_number -gt $1 ]] 
then
 echo "The number of files is GREATER than $1. Please guess again :)"
elif [[ $true_number -lt $1 ]]
then
 echo "The number of files is LOWER than $1. Please guess again :)"
elif [[ $true_number -eq $1 ]]
then
 echo "CONGRATUALTIONS! $1 is the correct number of files in the current directory :)"
else
 echo "Unforseen condition. Please contact game author!"
fi
}

guess=a
while [[ $true_number -ne $guess ]]
do
 echo "Please guess the number of files in the current directory:"
 read guess
 help_guess $guess
done


