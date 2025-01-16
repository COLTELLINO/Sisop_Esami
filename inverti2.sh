#!/bin/bash

COUNTER=0

while read RIGA ; do
	echo ${COUNTER} ${RIGA}
	((COUNTER=${COUNTER}+1))
done < $1 | sort -n -r | while read num riga ; do 
	echo ${riga}
done
