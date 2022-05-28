#!/bin/bash

t1=$1					#time of waiting
t2=$2					#time of using resource
s1=$(date +"%s")			#s1, s2 - timers
s2=$(date +"%s")
t=$s2-$s1				#passed time
while ((t < t1))
do
	echo "Waiting"			#printing waiting
	sleep 1
	s2=$(date +"%s")
	t=$s2-$s1
done
s1=$(date +"%s")
s2=$(date +"%s")
t=$s2-$s1				#restart time
while ((t+t1 < t2))
do
	echo "Using resource"		#printing using
	sleep 1
	s2=$(date +"%s")
	t=$s2-$s1
done

