#!/bin/bash
# Validation: Check if student executed the pwd command

if [ -f "/tmp/step1_done" ]; then
    echo "✅ Perfect! You've executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the pwd command using the executable code block above."
    echo "💡 Click the highlighted 'pwd' command to execute it"
    echo "� This will show your current directory location"
    exit 1
fi