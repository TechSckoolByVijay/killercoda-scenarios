#!/bin/bash
# Verify: source.txt file exists
if [ -f "/root/mylab/source.txt" ] || [ -f "/root/source.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please create file source.txt: touch source.txt"
  exit 1
fi