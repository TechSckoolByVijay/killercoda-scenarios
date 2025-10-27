#!/bin/bash
# Verify: cat source.txt shows the text
set -e
# prefer mylab/source.txt if exists
FILE=""
if [ -f "mylab/source.txt" ]; then FILE="mylab/source.txt"; elif [ -f "source.txt" ]; then FILE="source.txt"; fi
if [ -z "$FILE" ]; then
  echo "source.txt not found. Ensure you created it in step 4."
  exit 1
fi
if history | tail -n 200 | grep -E "\bcat\s+$FILE\b|\bcat\s+source.txt\b" >/dev/null 2>&1 || grep -q "This is sample content" "$FILE"; then
  if grep -q "This is sample content" "$FILE"; then
    echo "done"
    exit 0
  else
    echo "Please run: cat $FILE and verify the content 'This is sample content'"
    exit 1
  fi
else
  echo "Please run: cat $FILE"
  exit 1
fi