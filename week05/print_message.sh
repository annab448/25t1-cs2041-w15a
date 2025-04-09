#!/bin/dash

print_message() {
	if [ "$#" -eq 2 ]; then
		echo "$0: err: $2" >&2
		exit "$1"
	else
		# assuming that we only have message
		echo "$0: warn: $1" >&2
	fi
}


echo "this will print a warning only"
print_message "warning!! something bad has happened"

echo "this will print warning + exit"
print_message 2 "cannot go on"
