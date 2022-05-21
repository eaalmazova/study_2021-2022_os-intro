#!/bin/bash

p="$1"									#Saving path
shift									#Deleting the first argument
for i in $@								#Cycle for moving along the arguments
do
    count=0								#Variable for counting
    for j in ${p}/*.${i}						#Cycle for moving along the fules with extension $i
    do
	if test -f "$j"							#If extensions coincide, count++
	then
	    let count=count+1
	fi
    done
    echo "There are $count files in directory $p with extension $i"	#Printing results
done