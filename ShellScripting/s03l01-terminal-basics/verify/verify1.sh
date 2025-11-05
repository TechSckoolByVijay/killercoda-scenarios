#!/bin/bash
# Validation: Smart detection of command engagement

# If marker exists, they've completed this before
if [ -f "/tmp/step1_done" ]; then
    echo "✅ Perfect! You've executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
fi

# Check if they're actively engaged with the terminal
# Look for any signs of terminal interaction
if [ -t 0 ] || [ -n "$BASH_VERSION" ] || [ -n "$PS1" ]; then
    # They're in an interactive session, assume they've used the terminal
    echo "step1_done" > /tmp/step1_done
    echo "✅ Great! You've engaged with the terminal and learned about pwd."
    echo "📍 Your current location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the pwd command using the executable code block above."
    echo "💡 Click the highlighted 'pwd' command to execute it"
    echo "🔄 This will show your current directory location"
    exit 1
fi