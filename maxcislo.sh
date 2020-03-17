#!/bin/bash

MAX=$1
X=0;

while [ "$X" -le "$MAX" ]
	do 
		echo "maximum je : $MAX"
		echo "X je : $X"
		echo "zadaj cislo:"
		read CISLO
		X=$((X+CISLO))

done
echo "$MAX has been reached"

