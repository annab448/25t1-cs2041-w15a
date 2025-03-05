#!/bin/dash


for file in *.c
do
	echo "$file includes:"
	grep -Eiw '^#include' "$file" |
	sed 's/[">][^">]*$//' |			# remove after bracket
	sed 's/^.*[<"]/\t/'
done
