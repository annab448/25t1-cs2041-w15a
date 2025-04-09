#! /usr/bin/env dash

counter=0
z0=0
z1=0
z2=0
z3=0
z4=0
z5=0
z6=0
z7=0
z8=0
z9=0
nonzid=0
while read user tty addr other
do
	# is the person in UNSW
	case "$addr" in
	*uniwide*) counter=$((counter + 1));;
	esac

	# zid starting letter, or course?
	case "$user" in
	z0*) z0=$((z0 + 1));;
	z1*) z1=$((z1 + 1));;
	z2*) z2=$((z2 + 1));;
	z3*) z3=$((z3 + 1));;
	z4*) z4=$((z4 + 1));;
	z5*) z5=$((z5 + 1));;
	z6*) z6=$((z6 + 1));;
	z7*) z7=$((z7 + 1));;
	z8*) z8=$((z8 + 1));;
	z9*) z9=$((z9 + 1));;
	*)	 nonzid=$((nonzid + 1));;
	esac
done < last.log

echo "$counter uniwide loggins"
echo "z0: $z0, z1: $z1, z2: $z2, z3: $z3, z4: $z4, z5: $z5, z6: $z6, z7: $z7, z8: $z8, z9: $z9"
