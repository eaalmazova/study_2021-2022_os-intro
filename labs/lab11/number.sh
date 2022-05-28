#!/bin/bash

gcc number.c -o number		#Compiling program in C
./number				#Executing program in C
code=$?				#Getting code
case $code in
	0) echo "Number < 0";;
	1) echo "Number = 0";;
	2) echo "Number > 0";;
esac