#!/bin/bash

MINWIDTH=$1
MAXHEIGHT=$2
RES=""

while read n w h d  ; do
	if (( ${w} >= ${MINWIDTH})) ; then
		if (( ${h} <= ${MAXHEIGHT})) ; then
			echo ${n}
		fi
	fi
done < divani.txt
