#!/usr/bin/env python3

from glob import glob

def main():
    total = 0
    for filename in glob("*.[ch]"):
        with open(filename, "r") as f:
            subtotal = len(f.readlines())
            print(f"{subtotal:6} {filename}")
            total += subtotal
    print(f"{total:6} total")
if __name__ == "__main__":
    main()