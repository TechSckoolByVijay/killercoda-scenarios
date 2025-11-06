#!/bin/bash
# Verify: ps command works
if ps >/dev/null 2>&1; then
  echo "done"
  exit 0
else
  echo "Please run: ps"
  exit 1
fi