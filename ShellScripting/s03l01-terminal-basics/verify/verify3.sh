#!/bin/bash
# Validation: Check if student executed the clear command

if [ -f "/tmp/step3_done" ]; then
    echo "✅ Perfect! You've mastered terminal cleanup."
    echo "🧹 Your screen is now fresh and clean!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo "💡 Remember: Ctrl+L is the keyboard shortcut for clear"
    echo "done"
    exit 0
else
    echo "❌ Please run the clear command using the executable code block above."
    echo "💡 Click the highlighted 'clear' command to execute it"
    echo "🔄 This will clean your terminal screen"
    exit 1
fi