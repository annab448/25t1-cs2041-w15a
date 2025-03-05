#!/bin/dash


case $# in
1)
	LAST=$1
	FIRST=1
	INC=1
	;;
2)
	FIRST=$1
	LAST=$2
	INC=1
	;;
3)
	FIRST=$1
	INC="$2"
	LAST="$3"
	;;
*)
	echo "Usage: $0 LAST [FIRST [INCREMENT] ]"
	exit 1

esac

# check they are numbers

if [ "$FIRST" -eq "$FIRST" ] 2> /dev/null
then
	:
else
	echo "Error: $0: $FIRST not a number"
	exit 1
fi


if [ "$INC" -eq "$INC" ] 2> /dev/null
then
	:
else
	echo "Error: $0: $INC not a number"
	exit 1
fi


if [ "$LAST" -eq "$LAST" ] 2> /dev/null
then
	:
else
	echo "Error: $0: $LAST not a number"
	exit 1
fi


# while CURR < LAST
CURR="$FIRST"
while test "$CURR" -le "$LAST"
do
	echo "$CURR"
	CURR=$((CURR + INC))
done

