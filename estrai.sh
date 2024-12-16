#!/bin/bash
IFS=$',\n'
SOMMA=0
while read PRIMA SECONDA TERZA ; do
((SOMMA=${SOMMA}+${SECONDA}))
echo "${PRIMA},${TERZA}"
done < input1.txt
echo ${SOMMA}
