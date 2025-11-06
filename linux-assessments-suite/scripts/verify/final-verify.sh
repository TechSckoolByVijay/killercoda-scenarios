#!/bin/bash
set -euo pipefail
[[ -d "$HOME/projectX" ]]
[[ -f "$HOME/projectX/notes.txt" ]]
grep -qx "done" "$HOME/projectX/notes.txt"
[[ -f "$HOME/.final_ready" ]]