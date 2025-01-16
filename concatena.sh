#!/bin/bash

echo "" > output.txt

for file in $(find /usr/include/ -maxdepth 1 -iname std*) ; do
	if [[ -f ${file} ]] ; then 
	COUNTER=0
	while read RIGA ; do
		(( COUNTER=${COUNTER}+1 ))
		if (( COUNTER == 2 || COUNTER == 3 || COUNTER == 4 )) ; then
		echo ${RIGA} >> output.txt
		fi
	done < ${file}
	fi
done	
