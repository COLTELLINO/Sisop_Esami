#!/bin/bash
if (( $# != 1 )) ; then echo "manca l' argomento a riga di comando"; exit 1; fi
NA=0; NB=0; RESULT=0;
STRINGA=$1
LUNGHEZZASTRINGA=${#STRINGA}
NLETTI=0
# cerco le A e la prima B dopo qualche A
while (( ${NLETTI} < ${LUNGHEZZASTRINGA} )) ; do # ci sono altri caratteri da leggere
# prendo il carattere in posizione NLETTI (all'inizio NLETTI 0)
CAR=${STRINGA:${NLETTI}:1}
(( NLETTI=${NLETTI}+1 ))
if [[ ${CAR} == "A" ]] ; then
((NA=$NA+1)) ;
else
if [[ ${CAR} == "B" && ${NA} -gt 0 ]] ; then
NB=1
break;
fi
# arrivo qui solo se ho letto un carattere diverso da A e B oppure se ho letto una B senza prima avere letto delle A
# quindi in ogni caso termino senza avere verificato la simmetria
echo falso caso 1
exit 1
fi
done
# cerco il resto delle B
while (( ${NLETTI} < ${LUNGHEZZASTRINGA} )) ; do # ci sono altri caratteri da leggere
# prendo il carattere in posizione NLETTI (all'inizio NLETTI 0)
CAR=${STRINGA:${NLETTI}:1}
(( NLETTI=${NLETTI}+1 ))
if [[ ${CAR} == "B" ]] ; then
((NB=$NB+1)) ;
else
# arrivo qui solo se ho letto un carattere diverso da B e quindi termino senza avere verificato la simmetria
echo falso caso 2
exit 2
fi
done
# verifico di avere letto tante B quante A
if [[ $NA -gt 0 && $NA == $NB ]] ; then echo vero N=$NA; exit 0
Else echo falso caso 3: exit 3; fi
