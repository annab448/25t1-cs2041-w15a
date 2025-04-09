#!/usr/bin/env python3

import sys

n_lines = 10

if len(sys.argv) > 1 and sys.argv[1].startswith("-"):
    arg = sys.argv[1]       # arg = -n
    n_lines = int(arg[1:])  # n_lines = int(n)


line_no = 1
for line in sys.stdin:
    if line_no > n_lines:
        break
    else:
        print(line, end="")
        # sys.stdout.write(line)
    line_no += 1