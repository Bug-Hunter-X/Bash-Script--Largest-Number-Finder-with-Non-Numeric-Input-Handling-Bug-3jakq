#!/bin/bash

# This script finds the largest number in a list of numbers,
# handling non-numeric input gracefully.

numbers=()
while read num; do
  # Validate input: check if it's a number
  if [[ ! "$num" =~ ^-?[0-9]+$ ]]; then
    echo "Warning: Non-numeric input '$num' ignored." >&2
    continue
  fi
  numbers+=("$num")
done

if [[ ${#numbers[@]} -eq 0 ]]; then
  echo "No valid numbers provided." >&2
  exit 1
fi

largest=${numbers[0]}
for num in "${numbers[@]}"; do
  if (( num > largest )); then
    largest=$num
  fi
done

echo "Largest number: $largest"