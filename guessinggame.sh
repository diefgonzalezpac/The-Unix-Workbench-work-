#!/usr/bin/env bash
# File: guessinggame.sh


echo "Now you're going to guess the number of files in the directory"

echo "How many files do you think there are in the directory?"

read number

function files {
 amount_of_files=$( ls -l | wc -l)
 echo $amount_of_files
}
number_of_files=$(files)

while [[ $number_of_files -ne $number ]]
do
 if [[ $number -gt $number_of_files ]]
 then
  echo "That's wrong, your number is too high, try again: "
 elif [[ $number -lt $number_of_files ]]
 then
  echo "That's wrong, your number is too low, try again: "
 else 
  echo "Integers only!"
 fi

read number

done

echo "Congratulations, that's right"

 


