#!/bin/bash
# Verify: touch source.txt and content written
set -e
H=$(history | tail -n 200)
if echo "$H" | grep -E "\btouch\s+source.txt\b" >/dev/null 2>&1 && [ -f "mylab/source.txt" -o -f "source.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please create file source.txt inside 'mylab' and/or add content: touch source.txt && echo \"This is sample content\" > source.txt"
  exit 1
fi