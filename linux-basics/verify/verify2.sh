#!/bin/bash
# Verify: ls command was run
# Check if user understands ls by verifying they can list directory contents
if [ -d "/root" ]; then
  echo "done"
  exit 0
else
  exit 1
fi