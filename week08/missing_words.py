#!/usr/bin/env python3
import sys

def main():
    filename1 = sys.argv[1]
    filename2 = sys.argv[2]

    # f1 = open(...)
    # ....
    # close(f1)
    words1 = set()
    with open(filename1, "r") as f1:
        for line in f1:
            line = line.strip()
            words1.add(line)

    words2 = set()
    with open(filename2, "r") as f2:
        for line in f2:
            line = line.strip()
            words2.add(line)

    for word in sorted(words1 - words2):
        print(word)
    
if __name__ == "__main__":
    main()