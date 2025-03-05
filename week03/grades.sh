#!/bin/sh

while read id mark _
do
	echo -n "$id "

	if test "$mark" -eq "$mark" 2> /dev/null && test "$mark" -le 100 && test "$mark" -ge 0
	then
		if [ "$mark" -lt 50 ]
		then
			echo FL
		elif [ "$mark" -lt 65 ]
		then
			echo PS
		elif [ "$mark" -lt 75 ]
		then
			echo CR
		elif [ "$mark" -lt 85 ]; then
			echo DN
		else
			echo HD
		fi
	else
		echo "?? ($mark)"
	fi
done
