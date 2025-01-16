#!/bin/bash

COUNTER=0
NUMA=0
NUMB=0
LASTCHAR="A"
INPUT=$1
CHAR=""
LUNGHEZZA=${#INPUT}

while (( ${COUNTER} < ${LUNGHEZZA} )) ; do
	CHAR=${INPUT:${COUNTER}:1}
	(( COUNTER=${COUNTER}+1 ))
	if [[ ${CHAR} != "A" && ${CHAR} != "B" ]] ; then
		echo "false"
		exit 1
	fi
	if [[ ${CHAR} != "A" && ${COUNTER} == "0" ]] ; then
		echo "false"
		exit 1
	fi
	if [[ ${CHAR} == "A" && ${LASTCHAR} == "A" ]] ; then
		(( NUMA=${NUMA}+1 ))
		LASTCHAR="A"
	fi
	if [[ ${CHAR} == "A" && ${LASTCHAR} == "B" ]] ; then
		echo "false"
		exit 1
	fi
	if [[ ${CHAR} == "B" ]] ; then
		(( NUMB=${NUMB}+1 ))
		LASTCHAR="B"
	fi
done

if [[ ${NUMA} == ${NUMB} ]] ; then
	echo "true"
else
	echo "false"
fi
