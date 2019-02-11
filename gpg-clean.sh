#!/bin/bash

if [ -z "$1" ]; then 
	(>&2 echo "ERROR: No input file provided. Git Gud.")
else
	echo "$1" 
	gpg --cipher-algo AES256 -o $1.gpg -c $1 && rm $1
	echo "Done"
fi


