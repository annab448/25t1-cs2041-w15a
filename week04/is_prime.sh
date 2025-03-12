#!/bin/dash

if [ "$#" -ne 1 ] || ! [ "$1" -eq "$1" ] 2>/dev/null || [ "$1" -lt 0 ]
then
	echo "Usage: $0 <positive-number>"
	exit 1
fi

num="$1"
i=2

if [ "$num" -eq 1 ]; then
	echo "1 is prime!"
	exit 0
fi

while [ $((i * i)) -le "$num" ]
do
	if [ $((num % i)) -eq 0 ]; then
		echo "$num is not prime."
		exit 1
	fi
	i=$((i + 1))
done

echo "$num is prime!"
exit 0
