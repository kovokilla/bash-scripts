#!/bin/bash
TEMP=`getopt -o f::d::n:: --long file::,dir::,number:: -- "$@"`
eval set -- "$TEMP"
echo "$TEMP"
while true; do
	case "$1" in
		-f|--file)
			NAME=$2
			COMMAND=touch
			shift 2;;
		-d|--dir)
			NAME=$2
			COMMAND=mkdir
			shift 2;;
		-n|--number)
			NUMBER=$2
			shift 2;;
		--)
			shift;
			break;;
		*)
			echo "something is wrong"
			exit 1;;
	esac
done
for i in `seq 1 $NUMBER`;do $COMMAND $NAME$i; done
