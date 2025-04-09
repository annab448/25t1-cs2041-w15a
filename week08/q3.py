#!/usr/bin/env python3

def print_dict(d):
    for key, v in d.items():
        print(f"[{key}] => {v}")

def main():
    fave_colors = {'key':'value', 'Andrew':'Green', 'Anne':'Red', 'John':'blue'}
    print_dict(fave_colors)

if __name__ == "__main__":
    main()
