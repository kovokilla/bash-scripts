#!/bin/bash

FILE=$1
NUMBER=$2

if [ -e "$FILE" ] 
	then 
		echo File exists 
	else 
		echo File doesnt exists
		exit 1
fi

if [ -r "$FILE" ]
	then
		echo File is readable
	else
		echo File is not readable
fi

if [ -w "$FILE" ]
	then
                echo File is writeable
        else
                echo File is not writeable
fi

if [ -x "$FILE" ]
	then
		echo File is executable
		for i in `seq 1 "$NUMBER"`
		do
			mkdir mydir$i
		done
	else
		echo File is not executable
fi
