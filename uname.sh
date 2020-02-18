#!/bin/bash
while read line; do
IFS=":" read a1 a2 a3 a4 a5 a6 a7 <<<$line
if [ "$a7" == "/bin/bash" ]
then
	if [ "$2" == "$a1" ]
	then
		echo "$a5"
	fi
else 
	exit -1
fi	
done < "$1"	
