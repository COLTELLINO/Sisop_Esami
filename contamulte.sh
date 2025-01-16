#!/bin/bash

LAST=""

sort -k 3 | while read nome cognome ammontare giorno mese anno ; do
	if [[ ${ammontare} != ${LAST} ]] ; then
		LAST=${ammontare}
		echo "${ammontare} $(grep ${ammontare} multe.txt | wc -l)"
	fi
done
