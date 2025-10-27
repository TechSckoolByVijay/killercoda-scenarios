#!/bin/bash
# Verify: ps run
set -e
if history | tail -n 200 | grep -E "\bps( |$)" >/dev/null 2>&1 || ps >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: ps"
  exit 1
fi