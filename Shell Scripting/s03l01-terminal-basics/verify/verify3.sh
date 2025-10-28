#!/bin/bash
# Verify: clear command execution
# Check if user has run clear by looking at command history

if history | grep -q "clear"; then
    echo "✅ Excellent! You've mastered the art of keeping your terminal clean."
    echo "🧹 Your screen is now fresh and ready for new commands!"
    echo "done"
    exit 0
else
    echo "❌ Please run the 'clear' command to clean your terminal screen."
    echo "💡 Hint: Type 'clear' and press Enter (or try Ctrl+L as a shortcut!)"
    exit 1
fi