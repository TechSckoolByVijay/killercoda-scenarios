#!/bin/bash
set -euo pipefail

# Place demo files under the user's home directory
DEMO_DIR="$HOME/demo"
mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"

# Create files with different modified times
cd "$DEMO_DIR"
echo "alpha" > alpha.txt
sleep 1
echo "beta" > beta.log
sleep 1
echo "This is report1" > reports/report1.txt

# Set readable modified times so sorting is obvious
touch -d "2025-10-01 10:00:00" alpha.txt
touch -d "2025-10-02 12:30:00" beta.log
touch -d "2025-10-03 09:15:00" reports/report1.txt

# Make sure the asset script is executable (in case we want to reuse it)
chmod +x /tmp/create-files.sh || true