#!/bin/bash
# Verify: pwd run
set -e
if history | tail -n 200 | grep -E "\bpwd\b" >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: pwd"
  exit 1
fi