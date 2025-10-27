#!/bin/bash
# Verify: mkdir mylab and directory exists
set -e
H=$(history | tail -n 200)
if echo "$H" | grep -E "\bmkdir\s+mylab\b" >/dev/null 2>&1 && [ -d "mylab" ]; then
  echo "done"
  exit 0
else
  echo "Please create directory 'mylab' with: mkdir mylab"
  exit 1
fi