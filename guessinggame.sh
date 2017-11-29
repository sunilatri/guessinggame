#! /usr/bin/env bash
# lets user guess how many files there are

function error_message {
  if [ $1 -eq 1 ]
  then
    echo "Less, try again"
  fi	
  if [ $1 -eq 2 ]
  then
    echo "More, try again"
  fi	
  if [ $1 -eq 3 ]
  then
   echo "Congratulations!, you got it."
  fi	

}
file_count=$(ls -l | grep -v ^l | wc -l)
echo $file_count
my_guess=0
echo "Please input a number guess for number of files:"
while [ $file_count -ne $my_guess ]
do
   read my_guess
   if [[ -n ${my_guess//[0-9]/} ]]; then
    echo "Contains letters!. try again"
	my_guess=0
	continue
fi

if [ $my_guess -lt $file_count ]
then
    error_message 1
fi
if [ $my_guess -gt $file_count ]
then
    error_message 2
fi
done
if [ $my_guess -eq $file_count ]
then
    error_message 3
fi

