#!/bin/bash
# Verify: cp source.txt copy.txt
set -e
# locate source
if [ -f "mylab/source.txt" ]; then
  SRC="mylab/source.txt"
else
  SRC="source.txt"
fi
if history | tail -n 200 | grep -E "\bcp\s+$SRC\s+copy.txt\b|\bcp\s+source.txt\s+copy.txt\b" >/dev/null 2>&1 && [ -f "${SRC%/*}/copy.txt" -o -f "copy.txt" ]; then
  echo "done"
  exit 0
else
  # Also accept if copy created manually in same dir
  if [ -f "copy.txt" ]; then
    echo "done"
    exit 0
  fi
  echo "Please copy source.txt to copy.txt using: cp source.txt copy.txt"
  exit 1
fi