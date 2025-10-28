#!/bin/bash
# Verify: whoami command execution
# Check if user has run whoami by looking at command history

if history | grep -q "whoami"; then
    current_user=$(whoami)
    echo "✅ Perfect! You've discovered your Linux identity."
    echo "You are logged in as: $current_user"
    echo "done"
    exit 0
else
    echo "❌ Please run the 'whoami' command to discover your user identity."
    echo "💡 Hint: Type 'whoami' and press Enter"
    exit 1
fi