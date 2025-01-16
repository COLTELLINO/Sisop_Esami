#!/bin/bash
### Nei commenti che seguono vedete dei suggerimenti sull'algoritmo da
### seguire per produrre l'output corretto.
###

# I voti della seconda prova li devo mettere tutti nello standard output


# Poi devo mettere nello standard output i voti della prima prova
# ottenuti dagli studenti che non hanno un voto nella seconda prova

while read MAT VOTO ; do
	echo "${MAT} ${VOTO}"
done < esame2.txt

while read MAT VOTO ; do
	CULO=$(grep ${MAT} esame2.txt)
	if [[ ${CULO} == "" ]] ; then
		echo "${MAT} ${VOTO}"
	fi
done < esame1.txt
	
