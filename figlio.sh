#!/bin/bash
echo "$$"
if (( ${VARGLOBALEINDICEATTUALE} < ${VARGLOBALEINDICEMASSIMO} )) ; then
((VARGLOBALEINDICEATTUALE=${VARGLOBALEINDICEATTUALE}+1))
./figlio.sh
fi
