#!/bin/bash
# check paramters
if [ $# -eq 0 ] 
then
	echo "Parameters are absent"
	exit 1
fi

writefile=$1
writestr=$2
#select path
path=$(dirname $writefile)

#make dir if path doesn't exist
if [ ! -e $path ] 
then
	mkdir -p $path
fi
#write string to file with replase
echo $writestr > $writefile

#check error 
if [ $? -ne 0 ]
then 
	echo "File write error"
	exit 1
else 
	exit 0
fi


