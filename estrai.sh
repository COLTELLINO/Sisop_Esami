#!/bin/bash

IFS=","
SUM=0

while read A B C ; do
	echo "${A},${C}"
	(( SUM=${SUM}+${B} )) 
done < input1.txt

echo ${SUM}
