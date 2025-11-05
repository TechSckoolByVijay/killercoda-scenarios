#!/bin/bash
# Validation: Actually check if clear command was executed

# Check bash history for clear command execution
if history | grep -q "clear" 2>/dev/null || \
   tail -20 ~/.bash_history 2>/dev/null | grep -q "clear" || \
   (ps aux | grep -v grep | grep -q "clear") 2>/dev/null; then
    
    echo "✅ Perfect! You've executed the clear command."
    echo "🧹 Your screen is now fresh and clean!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo "💡 Remember: Ctrl+L is the keyboard shortcut for clear"
    echo "done"
    exit 0
else
    echo "❌ Please execute the clear command using the code block above."
    echo "💡 Click the 'clear' command to run it in the terminal"
    echo "🔄 This will clean your terminal screen"
    exit 1
fi