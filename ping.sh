#!/bin/bash

touch pong.txt
./pong.sh &

while ((1)) ; do

	if [[ -e ping.txt ]] ; then
		echo "ping.sh"
		rm -f ping.txt
		touch pong.txt
	fi
	sleep 2
	
done
