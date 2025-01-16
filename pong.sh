#!/bin/bash

while ((1)) ; do

	if [[ -e pong.txt ]] ; then
		echo "pong.sh"
		rm -f pong.txt
		touch ping.txt
	fi
	sleep 2
done
