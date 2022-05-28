#!/bin/bash

files=$(find ./ -maxdepth 1 -mtime -7)	#Searching for files changed less than a week ago
listing=""						#List of files to archivate
for file in "$files" do	
	listing+="$file"		#Adding to list
done
dir=$(basename $(pwd))				#Catalog name
tar -cvf $dir.tar $listing			#Archivating