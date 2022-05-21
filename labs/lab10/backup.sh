#!/bin/bash

name='backup.sh'		#Saving file with script into variable name
mkdir ~/backup			#Creating ~/backup
bzip2 -k ${name}		#Archivating script
mv ${name}.bz2 ~/backup/	#Moving archivated script to ~/backup
echo "Done"