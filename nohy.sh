#!/bin/bash

LEGS=$1

case $LEGS in
	pes | macka | krava )
		echo " $LEGS ma 4 nohy";;
	kacka | sliepka )
		echo " $LEGS ma 2 nohy";;
	* )
		echo " $LEGS je nezname zviera"
		echo " poznam iba pes, macka, krava, kacka, sliepka";;
esac
