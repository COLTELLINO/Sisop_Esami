#!/bin/bash

while read A B C D ; do
	if [[ ${C:1:1} != "" ]] ; then
		echo ${C:1:1}
	fi
done < /usr/include/stdio.h
