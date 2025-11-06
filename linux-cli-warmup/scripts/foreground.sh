#!/bin/bash
set -euo pipefail

# Ensure demo files exist (run create-files.sh as backup)
if [ ! -d "$HOME/demo" ]; then
    echo "Creating demo directory..."
    bash /tmp/create-files.sh || true
fi

clear
echo "🚀 Linux CLI Warmup Environment Ready!"
echo ""
echo "Demo files are prepared at: ~/demo"
echo "You can start with: pwd, whoami, cd ~/demo"
echo ""
echo "Happy learning! 🐧"
echo ""

# Set initial directory to home
cd "$HOME"
exec bash