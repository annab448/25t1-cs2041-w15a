#!/usr/bin/env python3
import sys, subprocess, re

def main():
    if (len(sys.argv) != 2):
        print(f"Usage: {sys.argv[0]} <url>")
        sys.exit(1)
    url = sys.argv[1]

    # use subprocess to do wget
    proc = subprocess.run(f"wget -q -O- {url}", shell=True, capture_output=True, text=True)
    webpage = proc.stdout

    # find phone numbers
    numbers = set()
    for match in re.findall(r'[\d -]+', str(webpage)):
        print("####", match)

if __name__ == "__main__":
    main()