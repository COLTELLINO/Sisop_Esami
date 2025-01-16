#!/bin/bash

while read A B C D ; do
	echo ${C}
done < cadutevic.txt | uniq -c	
