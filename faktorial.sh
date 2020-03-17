#!/bin/bash

NUM=$1

A=1


while [ $(($NUM)) -gt 1 ]
	do
		A=$(($A*$NUM))
		NUM=$(($NUM-1))
	done
echo $A
