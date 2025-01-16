#!/bin/bash

(( COUNTER=${COUNTER}+1 ))

echo $$

if (( COUNTER <= 10 )) ; then
	./figlio.sh
fi
