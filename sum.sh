#!/bin/bash

EVEN=0
ODD=0
COUNTER=0

while read num ; do
	if [[ $(( ${COUNTER} % 2 )) -eq 0 ]] ; then
		(( EVEN=${EVEN}+${num} ))
		(( COUNTER=${COUNTER}+1 ))
	fi
	if [[ $(( ${COUNTER} % 2 )) -eq 1 ]] ; then
		(( ODD=${ODD}+${num} ))
		(( COUNTER=${COUNTER}+1 ))
	fi
done < num.txt

echo ${EVEN}
echo ${ODD}
