#!/bin/bash

SUM=0

for file in $(find /usr/include/ -iname *.h) ; do
	LINES=$(grep "*" "${file}" | wc -l)
	(( SUM=${SUM}+${LINES} ))
	echo ${SUM} 1>&2
done
