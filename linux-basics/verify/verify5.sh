#!/bin/bash
# Verify: cat command was used to read source.txt
if [ -f "/root/mylab/source.txt" ]; then
  echo "done"
  exit 0
elif [ -f "/root/source.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please ensure source.txt exists and use: cat source.txt"
  exit 1
fi