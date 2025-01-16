#!/bin/bash

STRINGA=$1

echo ${STRINGA} | while read -n 1 CHAR; do
    echo -e "${CHAR}\n" ; done | sort | uniq -c | while read CHAR NUM ; do
	echo ${NUM} ${CHAR}
	done
