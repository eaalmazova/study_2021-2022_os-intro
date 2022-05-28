#!/bin/bash

iflag=0							#Initializating flags for options
oflag=0
pflag=0
Cflag=0
nflag=0

while getopts "i:o:p:Cn" optletter			#Moving along the options
do case $optletter in					#Changing flag if found
	i) iflag=1
	ival=$OPTARG;;
	o) oflag=1
	oval=$OPTARG;;
	p) pflag=1
	pval=$OPTARG;;
	C) Cflag=1;;
	n) nflag=1;;
	esac
done
if (($pflag==0))
then echo "Template not found"
else
	if (($iflag==0))
	then echo "File not found"
	else
		if (($oflag==0))					
		then if (($Cflag==0))
			then if (($nflag==0))
				then grep $pval $ival
				else grep -n $pval $ival
				fi
			else if (($nflag==0))
				then grep -i $pval $ival
				else grep -i -n $pval $ival
				fi
			fi
		else if (($Cflag==0))
			then if (($nflag==0))
				then grep $pval $ival > $oval
				else grep -n $pval $ival > $oval
				fi
			else if (($nflag==0))
				then grep -i $pval $ival > $oval
				else grep -i -n $pval $ival > $oval
				fi
			fi
		fi
	fi
fi