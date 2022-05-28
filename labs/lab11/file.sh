#!/bin/bash

opt=$1							#option initialization
format=$2						#format initialization
number=$3						#quantity initialization

for ((i=1; i <= $number; i++))  do
	file=$(echo $format | tr '#' "$i")		#creating name
	if (($opt=="-r"))
	then 
	    rm -f $file					#remove file
	elif (($opt=="-c"))
	then 
	    touch $file						#create file
	fi
done