#!/bin/bash

grep OPERATIVI lista.txt -B 1 --no-group-separator | while read A B ; do
	if [[ ${A} != "SISTEMI" ]] ; then
		echo ${A} 
	fi
done
