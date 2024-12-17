#!/bin/bash
echo -n "" > output.txt
for name in /usr/include/std* ; do
 if [[ -e ${name} ]] ; then
if exec {FD}<${name} ; then
 NUM=0
while read -u ${FD} RIGA ; do
 ((NUM=${NUM}+1));
if (( $NUM > 1 )) ; then
 echo "$RIGA" >> output.txt
 fi
 if (( $NUM >= 4 )) ; then
 break;
 fi
 done
 exec {FD}>&-
 fi
 fi
done
