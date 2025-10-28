#!/bin/bash
# Verify: pwd command execution
# Check if user ran the pwd command by looking for the completion marker

if [ -f "/tmp/step1_completed" ]; then
    echo "✅ Excellent! You've successfully used the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the pwd command using the executable code block above."
    echo "💡 Hint: Click the 'pwd && echo...' command to execute it"
    echo "🔄 This will show your current directory and mark the step as complete"
    exit 1
fi