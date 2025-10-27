#!/bin/bash
# Verify: cp created copy.txt
if [ -f "/root/mylab/copy.txt" ] || [ -f "/root/copy.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please copy source.txt to copy.txt using: cp source.txt copy.txt"
  exit 1
fi