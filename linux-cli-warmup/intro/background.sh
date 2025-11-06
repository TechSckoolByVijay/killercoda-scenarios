#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up Linux CLI Warmup environment..." # to test stdout output in /var/log/killercoda

# Create demo directory structure
DEMO_DIR="$HOME/demo"
mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"

# Create files with content
cd "$DEMO_DIR"
echo "alpha content" > alpha.txt
echo "beta content" > beta.log
echo "This is report1 content" > reports/report1.txt

# Set different timestamps for sorting demonstration
touch -d "2025-10-01 10:00:00" alpha.txt
touch -d "2025-10-02 12:30:00" beta.log
touch -d "2025-10-03 09:15:00" reports/report1.txt

# Verify setup
echo "Demo directory contents:" >> /var/log/killercoda
ls -la "$DEMO_DIR" >> /var/log/killercoda
echo "Reports directory contents:" >> /var/log/killercoda
ls -la "$DEMO_DIR/reports" >> /var/log/killercoda

echo "Environment setup completed!" >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done