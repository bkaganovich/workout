#!/usr/bin/env python3

# File: workout-0.1.py 
# Totals number of reps in pyramid levels exercise

import sys

#level
if not len(sys.argv) > 1: #prompt for level if no second arg given
    level = int(input("Enter pyramid level: "))
else: #level is second arg
    level = int(sys.argv[1])

#pyramid sets
def sets(level):
    total = 0 #init total reps
    reps = 1 #init reps
    while reps < level: #up pyramid
        print(reps, "rep", end=', ') #current pyr level
        total += reps #accumulate total
        print("total:", total) #total reps
        reps += 1 #next rep

    while reps > 0: #down pyramid
        print(reps, "rep", end=', ') #current pyr level
        total += reps #accumulate total
        print("total:", total) #total reps
        reps -= 1 #next rep

sets(level)
