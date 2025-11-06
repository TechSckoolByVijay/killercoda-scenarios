#!/bin/bash
set -euo pipefail
# Success criteria: marker file exists in HOME
[[ -f "$HOME/.completed_step2" ]]