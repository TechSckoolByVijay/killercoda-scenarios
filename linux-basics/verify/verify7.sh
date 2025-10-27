#!/bin/bash
# Verify: mv copy.txt moved.txt
set -e
if history | tail -n 200 | grep -E "\bmv\s+copy.txt\s+moved.txt\b" >/dev/null 2>&1 && [ -f "moved.txt" ]; then
  echo "done"
  exit 0
else
  if [ -f "moved.txt" ]; then
    echo "done"
    exit 0
  fi
  echo "Please rename the copy: mv copy.txt moved.txt"
  exit 1
fi