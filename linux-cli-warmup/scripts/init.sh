#!/bin/bash
set -euo pipefail

# Create log for debugging
exec > /tmp/init.log 2>&1
echo "Starting initialization at $(date)"

# Place demo files under the user's home directory
DEMO_DIR="$HOME/demo"
echo "Creating demo directory at: $DEMO_DIR"
mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"

# Create files with different modified times
cd "$DEMO_DIR"
echo "Creating demo files..."
echo "alpha content" > alpha.txt
sleep 1
echo "beta content" > beta.log
sleep 1
echo "This is report1 content" > reports/report1.txt

# Set readable modified times so sorting is obvious
echo "Setting file timestamps..."
touch -d "2025-10-01 10:00:00" alpha.txt
touch -d "2025-10-02 12:30:00" beta.log
touch -d "2025-10-03 09:15:00" reports/report1.txt

# Make sure the asset script is executable
chmod +x /tmp/create-files.sh || true

echo "Demo directory contents:"
ls -la "$DEMO_DIR"
echo "Reports directory contents:"
ls -la "$DEMO_DIR/reports"
echo "Initialization completed at $(date)"