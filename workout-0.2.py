#!/usr/bin/env python3

# File: workout-0.2.py
# Totals number of reps in pyramid levels exercise

import sys

#level
if not len(sys.argv) > 1: #prompt for level if no second arg given
    level = int(input("Enter pyramid level: "))
else: #level is second arg
    level = int(sys.argv[1])

#pyramid sets
def sets(level):
    sets = list(range(1,level)) + list(range(level,0,-1))
    total = 0 #init total reps
    for reps in sets:
        print(reps, "rep", end=", ") #current pyr level
        total += reps #accumulate total
        print("total:", total) #total reps

sets(level)
