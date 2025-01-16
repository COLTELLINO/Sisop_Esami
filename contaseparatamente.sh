#!/bin/bash

NUMFILES=$#
INDEX=0
EVEN=0
ODD=0
ISODD=0

if (( NUMFILES > 9 )) ; then
	exit 1
fi

for file in $@ ; do

	(( INDEX=${INDEX}+1 ))
	
	(( ISODD=${INDEX}%2 ))
		
	LINES=$(wc ${file} -l | while read A B ; do echo ${A} ; done)

	if [[ ${ISODD} -eq 0 ]] ; then
		(( EVEN=${EVEN}+${LINES} ))
	else
		(( ODD=${ODD}+${LINES} ))	
	fi
	
done

echo ${EVEN}
echo ${ODD} 1>&2
