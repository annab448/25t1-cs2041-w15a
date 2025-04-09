#!/usr/bin/env python3

import sys

n_lines = 10

if len(sys.argv) > 1 and sys.argv[1].startswith("-"):
    arg = sys.argv.pop(1)       # arg = -n
    n_lines = int(arg[1:])  # n_lines = int(n)

if len(sys.argv) == 1:
	sys.argv.append("-")

for filename in sys.argv[1:]:
	line_no = 1
	try:
		if filename == "-":
			stream = sys.stdin
			filename = "<stdin>"
		else:
			stream = open(filename, "r")
		print(f"====={filename}=====")
		line_no = 1
		for line in stream:
			if line_no > n_lines:
				break
			sys.stdout.write(line)
			line_no += 1
		if filename != "<stdin>":
			stream.close()

	except IOError as e:
		print(f"{sys.argv[0]}: cannot open {filename}: {e.strerror}")	

