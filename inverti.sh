#!/bin/bash

if read RIGA ; then
	./inverti.sh $1
		echo ${RIGA}
fi

