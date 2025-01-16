#!/bin/bash

for file in $(find $1 -maxdepth 1 -iname "*.txt") ; do
	if [[ -s ${file} ]] ; then
		echo ${file}
	fi
done
