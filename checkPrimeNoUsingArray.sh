#!/bin/bash

arrayOfNumbers=(20 23 40 47 21)
echo ${arrayOfNumbers[@]}

length=${#arrayOfNumbers[@]}
# echo $length

for (( i=0; i<$length; i++ ))
do
	flag=0
	for (( j=2; j<=${arrayOfNumbers[$i]}/2; j++ ))
	do
        	rem=$(( ${arrayOfNumbers[$i]}%$j ))
        	if (( $rem == 0 ))
        	then
                	flag=1
			break
		fi
	done

	if (( $flag == 1 ))
	then
		echo "${arrayOfNumbers[$i]} is not a prime number."
	else
		echo "${arrayOfNumbers[$i]} is a prime number."
	fi
done


