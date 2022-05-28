#!/bin/bash

command=$1								#command name
if [ -f /usr/share/man/man1/$command.1.gz ]				#looking for manual
then
	gunzip -c /usr/share/man/man1/$command.1.gz | less		#unarchivating if manual exists
else
	echo "There is no manual"					#message if there is no manual
fi
