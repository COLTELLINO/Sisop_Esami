#!/bin/bash

IFS=","
FILE=$1
INDEX=$2

while read RIGA ; do
	COUNTER=0
	for parola in ${RIGA} ; do
		(( COUNTER=${COUNTER}+1 ))
		if [[ ${COUNTER} -eq ${INDEX} ]] ; then
			echo ${parola}
		fi
	done
done < ${FILE}
