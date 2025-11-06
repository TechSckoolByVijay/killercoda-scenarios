#!/bin/bash
set -euo pipefail
DEMO_DIR="$HOME/demo"
mkdir -p "$DEMO_DIR/reports" "$DEMO_DIR/projects"
cd "$DEMO_DIR"
[ -f alpha.txt ] || echo "alpha" > alpha.txt
[ -f beta.log ]  || echo "beta"  > beta.log
[ -f reports/report1.txt ] || echo "This is report1" > reports/report1.txt
touch -d "2025-10-01 10:00:00" alpha.txt
touch -d "2025-10-02 12:30:00" beta.log
touch -d "2025-10-03 09:15:00" reports/report1.txt