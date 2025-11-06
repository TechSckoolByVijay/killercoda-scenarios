#!/bin/bash
set -euo pipefail

# Base demo structure
DEMO="$HOME/demo"
mkdir -p "$DEMO/reports" "$DEMO/projects"
printf "alpha\n" > "$DEMO/alpha.txt"
printf "beta\n"  > "$DEMO/beta.log"
printf "This is report1\n" > "$DEMO/reports/report1.txt"
touch -d "2025-10-01 10:00:00" "$DEMO/alpha.txt"
touch -d "2025-10-02 12:30:00" "$DEMO/beta.log"
touch -d "2025-10-03 09:15:00" "$DEMO/reports/report1.txt"

# Copy asset
mkdir -p /opt/assets
cp -f /opt/assets/sample-data.txt "$DEMO/projects/sample-data.txt" || true

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
printf "one\n" > "$RANDDIR/subA/file_${SEED}_a.txt"
printf "two\n" > "$RANDDIR/subB/file_${SEED}_b.log"
# Stagger timestamps
touch -d "2025-09-30 09:00:00" "$RANDDIR/subA/file_${SEED}_a.txt"
touch -d "2025-10-04 15:45:00" "$RANDDIR/subB/file_${SEED}_b.log"