#!/bin/bash
# Verify: pwd command execution
# This checks if the student has run the pwd command

# Check if pwd appears in the bash history (most recent commands)
if tail -20 ~/.bash_history 2>/dev/null | grep -q "pwd" || \
   history 2>/dev/null | tail -20 | grep -q "pwd" || \
   [ -f "/tmp/step1_completed" ]; then
    
    # Mark as completed for future checks
    echo "pwd-executed" > /tmp/step1_completed
    
    echo "✅ Excellent! You've successfully used the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the pwd command using the executable code block above."
    echo "💡 Hint: Click the 'pwd' command to execute it"
    echo "🔄 This will show your current directory"
    echo ""
    echo "📌 Make sure to click the executable code block, not just read about it!"
    exit 1
fi