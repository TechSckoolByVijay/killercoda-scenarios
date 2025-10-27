#!/bin/bash
# Verify: mkdir mylab and directory exists
if [ -d "/root/mylab" ]; then
  echo "done"
  exit 0
else
  echo "Please create directory 'mylab' with: mkdir mylab"
  exit 1
fi