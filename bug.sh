#!/bin/bash

# This script attempts to find the largest number in a list of numbers,
# but contains a subtle bug that can lead to unexpected results.

# Read numbers from stdin
numbers=()
while read num; do
  numbers+=("$num")
done

# Initialize largest to the first number
largest=${numbers[0]}

# Iterate through the numbers, updating largest if a larger number is found
for num in "${numbers[@]}"; do
  if (( num > largest )); then
    largest=$num
  fi
done

echo "Largest number: $largest"