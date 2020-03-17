#!/bin/bash

NAME=$1

if [ -e "$NAME" ]
	then 
		case "$NAME" in
			 [ test -f "$NAME" ])
				echo File exists
				exit 0;;
			 [ test -d "$NAME" ]) 
				echo Directory exist
				exit 1;;
			 *)
				echo Might be link or else
				exit 2;;
		esac
	else
		echo Doesnt exist
fi


