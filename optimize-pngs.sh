#!/bin/bash
# Script to optimize all PNGs in the current directory.
# Use after installing optipng with `brew install optipng`

for file in *.png; do
    [ -f "$file" ] || continue
    optipng -o5 "$file"
done
