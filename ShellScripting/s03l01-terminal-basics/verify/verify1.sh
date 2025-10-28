#!/bin/bash
# Verify: pwd command execution
# Check if user has run pwd by looking at command history

if history | grep -q "pwd"; then
    echo "✅ Great! You've successfully used the pwd command to find your location."
    echo "You discovered you're in: $(pwd)"
    echo "done"
    exit 0
else
    echo "❌ Please run the 'pwd' command to see your current directory."
    echo "💡 Hint: Type 'pwd' and press Enter"
    exit 1
fi