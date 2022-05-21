#!/bin/bash

p="$1"					#Saving path
for i in ${p}/*				#Cycle to move along the files
do
    echo "$i"				#Printing name of the file
    
    if test -f $i			#Printing whether it's a file
    then echo "File"
    fi
    
    if test -d $i			#Printing whether it's a directory
    then echo "Directory"
    fi
    
    if test -r $i			#Printing whether it can be read
    then echo "Reading allowed"
    fi
    
    if test -w $i			#Printing whether it can be written
    then echo "Writing allowed"
    fi
    
    if test -x $i			#Printing whether it can be executed
    then echo "Execution allowed"
    fi
done