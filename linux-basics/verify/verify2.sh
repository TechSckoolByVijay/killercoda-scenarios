#!/bin/bash
# Verify: ls run
set -e
if history | tail -n 200 | grep -E "\bls( |$)" >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: ls"
  exit 1
fi