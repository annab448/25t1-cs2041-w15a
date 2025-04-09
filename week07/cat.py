#! /usr/bin/env python3

import sys

# -n flag
number = False

if len(sys.argv) > 1 and sys.argv[1].startswith("-"):
    arg = sys.argv.pop(1)[1:]
    if arg == 'n':
        number = True
    else:
        print(f"{sys.argv[0]}:{arg} not recognised flag")

print(f"number = {number}")

# check if no filenames => read from stdin instead
if len(sys.argv) == 1:
    sys.argv.append("-")

line_no = 1
for filename in sys.argv[1:]:
    try:
        if filename == "-":
            stream = sys.stdin
        else:
            stream = open(filename)

        for line in stream:
            if number:
                # change the line
                line = f"{line_no:6}  {line}"
            sys.stdout.write(line)
            line_no += 1

        if stream != sys.stdin:
            stream.close()

    except IOError as e:
        print(f"{sys.argv[0]}: can not open: {e.filename}: {e.strerror}")

