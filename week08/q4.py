#!/usr/bin/env python3

import sys

def main():
    n = int(sys.argv[1])
    m = int(sys.argv[2])
    width = int(sys.argv[3])

    for x in range(1, n+1):
        for y in range(1, m+1):
            print(f"{x*y:>{width}}", end='')
        print("")


if __name__ == "__main__":
    main()