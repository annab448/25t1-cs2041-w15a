#!/bin/dash

top_and_bottom() {
	echo "function @ = $@"
	# error checking
	file="$1"

	echo "================="
	echo "$file"
	echo "-----------------"
	cat "$1" | head -1
	cat "$file" | tail -1
	echo "-----------------"
	sed -n '1p; $p' "$file"
}


echo "whole file @ = $@"
for f in "$@"
do
	top_and_bottom "$f"
done
