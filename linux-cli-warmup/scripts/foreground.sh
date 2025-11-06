#!/bin/bash
set -euo pipefail

# Also ensure demo files exist if foreground terminal restarts
bash /tmp/create-files.sh || true

clear
echo "✅ Environment ready."
echo "You're in a Unix terminal. Try: pwd, whoami, ls -l, cd ~/demo"
echo
exec bash