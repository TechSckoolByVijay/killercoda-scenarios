#!/bin/bash
# Validation: Actually check if pwd command was executed

# Check bash history for pwd command execution
if history | grep -q "pwd" 2>/dev/null || \
   tail -20 ~/.bash_history 2>/dev/null | grep -q "pwd" || \
   (ps aux | grep -v grep | grep -q "pwd") 2>/dev/null; then
    
    echo "✅ Perfect! You've executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the pwd command using the code block above."
    echo "💡 Click the 'pwd' command to run it in the terminal"
    echo "🔄 This will show your current directory location"
    exit 1
fi