#!/bin/bash

num="$1"

i=1

while [ "$i" -le "$num" ] 
do
	if ./is_prime.sh "$i" > /dev/null
	then
		echo "$i"
	fi
	i=$((i + 1))
done
