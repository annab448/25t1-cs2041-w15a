#!/bin/dash

for prog in "$@"
do
	dirs=$(echo "$PATH" | tr ':' '\t')

	found=1
	for dir in $dirs
	do
		f="$dir/$prog"
		if test -x "$f"; then
			echo "$f"
			found=0
			break
		fi
	done

	# did we find something??
	if ! [ 0 -eq "$found" ]; then
		echo "$prog not found"
	fi
done
