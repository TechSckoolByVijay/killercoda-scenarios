#!/bin/bash
# Verify: mv created moved.txt and copy.txt is gone
if [ -f "/root/mylab/moved.txt" ] || [ -f "/root/moved.txt" ]; then
  echo "done"
  exit 0
else
  echo "Please rename the copy: mv copy.txt moved.txt"
  exit 1
fi