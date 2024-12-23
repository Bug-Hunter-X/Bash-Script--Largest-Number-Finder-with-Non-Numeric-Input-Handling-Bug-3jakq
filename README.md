# Bash Script: Largest Number Finder with Non-Numeric Input Handling Bug

This repository contains a bash script designed to find the largest number in a list of numbers provided via standard input. However, the script contains a bug related to handling non-numeric input. 

The `bug.sh` file demonstrates the flawed script, while `bugSolution.sh` provides a corrected version with improved error handling. The bug is a classic example of what can occur if you don't perform type checking in bash scripts.

## Bug Description
The original script fails when encountering non-numeric input. It does not perform any validation to check if the input is a valid number. This can lead to incorrect results or script termination. 

## Solution
The solution includes input validation to ensure that all the numbers are indeed numbers and then proceeds to find the largest number among them.
