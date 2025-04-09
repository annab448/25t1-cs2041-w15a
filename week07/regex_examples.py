#!/usr/bin/env python3

import re

with open("alphabet", "r") as file:
	string = file.read()
	match = re.search(r'[aeiou]', string, re.IGNORECASE)
	print(match.span())
	# print(match.patt)
	print(match.string)
	print(match.group(0))

	for line in string.split('\n'):
		m = re.search(r'[aeiou]', line, re.IGNORECASE)
		if m:
			print(m.group(0))
