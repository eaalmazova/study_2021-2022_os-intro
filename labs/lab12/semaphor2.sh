#!/bin/bash

t1=$1							#time to wait
t2=$2							#time to use resource
N=$3							#number of terminals
i=0							#iterator of terminals

while (( i < N )); do
	exec 1>/dev/pts/$i				#changing output to terminal #i
	s1=$(date +"%s")
	s2=$(date +"%s")
	t=$s2-$s1					#setting time
	while (( t < t1 )); do
		echo "$i waiting"			#terminal #i waiting
		sleep 1
		s2=$(date +"%s")
		t=$s2-$s1
	done
	s1=$(date +"%s")
	s2=$(date +"%s")
	t=$s2-$s1+$t1					#resetting time
	while (( t < t2 )); do
		echo "$i using resource"		#terminal #i using resource
		sleep 1
		s2=$(date +"%s")
		t=$s2-$s1
	done
	i=$(($i+1))					#changing iterator
done
