#!/bin/bash

FIZZNUM=$1
BUZZNUM=$2
MAX=$3

A=1

if [ $(($FIZZNUM)) -eq 0 ]
	then 
		FIZZNUM=3
fi

if [ $(($BUZZNUM)) -eq 0 ]
        then
                BUZZNUM=5
fi

if [ $(($MAX)) -eq 0 ]
        then
                MAX=100
fi



for i in `seq $A $MAX`
	do
		if [ $(("$i%$FIZZNUM")) -eq 0 -a $(("$i%$BUZZNUM")) -eq 0 ]
			then
				echo fizzbuzz $i  
		elif [ $(("$i%$FIZZNUM")) -eq 0 ]
			then
				echo fizz $i 
		elif [ $(("$i%$BUZZNUM")) -eq 0 ]
			then	
				echo buzz $i
		else
			echo $i
		fi
	done
