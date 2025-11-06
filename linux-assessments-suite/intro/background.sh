#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up Linux Assessments Suite environment..." # to test stdout output in /var/log/killercoda

# Base demo structure
DEMO="$HOME/demo"
mkdir -p "$DEMO/reports" "$DEMO/projects"
echo "alpha content" > "$DEMO/alpha.txt"
echo "beta content" > "$DEMO/beta.log"
echo "This is report1 content" > "$DEMO/reports/report1.txt"

# Set different timestamps for sorting demonstration
touch -d "2025-10-01 10:00:00" "$DEMO/alpha.txt"
touch -d "2025-10-02 12:30:00" "$DEMO/beta.log"
touch -d "2025-10-03 09:15:00" "$DEMO/reports/report1.txt"

# Create sample data file
echo "sample,line,of,data" > "$DEMO/projects/sample-data.txt"

# Randomized lab seed (stable within a run)
SEED_FILE="/tmp/lab-seed"
if [[ ! -f "$SEED_FILE" ]]; then
  awk 'BEGIN{srand(); print int(rand()*9000)+1000}' > "$SEED_FILE"
fi
SEED="$(cat "$SEED_FILE")"

# Create randomized files using the seed
RANDDIR="$HOME/lab_$SEED"
mkdir -p "$RANDDIR/subA" "$RANDDIR/subB"
echo "seed=$SEED" > "$RANDDIR/info.txt"
echo "file content one" > "$RANDDIR/subA/file_${SEED}_a.txt"
echo "file content two" > "$RANDDIR/subB/file_${SEED}_b.log"

# Stagger timestamps so one is clearly newer
touch -d "2025-09-30 09:00:00" "$RANDDIR/subA/file_${SEED}_a.txt"
touch -d "2025-10-04 15:45:00" "$RANDDIR/subB/file_${SEED}_b.log"

# Log completion
echo "Demo directory contents:" >> /var/log/killercoda
ls -la "$DEMO" >> /var/log/killercoda
echo "Lab directory contents:" >> /var/log/killercoda
ls -la "$RANDDIR" >> /var/log/killercoda

echo "Environment setup completed!" >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done