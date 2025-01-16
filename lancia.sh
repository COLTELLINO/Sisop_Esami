#!/bin/bash
FILES=""

COUNTER=0

FILES=$(ls -S1 /usr/include/*.h | while read RIGA  ; do
	(( COUNTER=${COUNTER}+1 ))
	echo ${RIGA}
	if [[ COUNTER -eq 7 ]] ; then
		break
	fi
done)

./contaseparatamente.sh ${FILES}
