#!/bin/bash
set -euo pipefail

# Ensure init ran (idempotent patterns above make it safe)
bash /usr/local/bin/entrypoint.sh 2>/dev/null || true
[[ -x /opt/killercoda/env-init ]] && /opt/killercoda/env-init || true
[[ -x /usr/local/bin/init.sh ]] && /usr/local/bin/init.sh || true
[[ -x /root/scripts/init.sh ]] && /root/scripts/init.sh || true
[[ -x "$(dirname "$0")/init.sh" ]] && "$(dirname "$0")/init.sh" || true

clear
echo "✅ Environment ready."
echo "Try: whoami, pwd, cd ~/demo, ls -l, ls -lt, ls -ltr"
echo "Randomized lab directory: ~/lab_\$(cat /tmp/lab-seed 2>/dev/null || echo '????')"
echo
exec bash