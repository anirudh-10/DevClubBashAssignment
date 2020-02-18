#!/bin/bash
calc=0
while read line; do
IFS=" " read c d <<<$line 
if [ "$d" == "+" ]
then
	let "calc=$calc + $c"
elif [ "$d" == "*" ]
	then
		let "calc=$calc * $c"
elif [ "$d" == "-" ]
	then
		let "calc=$calc - $c"
elif [ "$d" == "/" ]
	then
		let "calc=$calc / $c"				
fi 
done < input.txt
echo $calc