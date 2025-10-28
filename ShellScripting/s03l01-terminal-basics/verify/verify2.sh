#!/bin/bash
# Verify: whoami command execution
# Check if user ran the whoami command by looking for the completion marker

if [ -f "/tmp/step2_completed" ]; then
    current_user=$(whoami)
    echo "✅ Perfect! You've discovered your Linux identity."
    echo "🆔 You are logged in as: $current_user"
    echo "🎯 You now understand user identification in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the whoami command using the executable code block above."
    echo "💡 Hint: Click the 'whoami && echo...' command to execute it"
    echo "🔄 This will show your username and mark the step as complete"
    exit 1
fi