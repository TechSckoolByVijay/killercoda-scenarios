#!/bin/bash
# Verify: clear command execution
# Check if user ran the clear command by looking for the completion marker

if [ -f "/tmp/step3_completed" ]; then
    echo "✅ Excellent! You've mastered the clear command."
    echo "🧹 Your terminal is now clean and organized!"
    echo "💡 Pro tip: Ctrl+L is a shortcut for clear"
    echo "🎯 You understand workspace management!"
    echo "done"
    exit 0
else
    echo "❌ Please run the clear command using the executable code block above."
    echo "💡 Hint: Click the 'clear && echo...' command to execute it"
    echo "🔄 This will clear your screen and mark the step as complete"
    exit 1
fi