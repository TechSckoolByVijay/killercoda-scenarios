#!/bin/bash
# Verify: clear command execution

# Check if clear appears in recent history
if tail -20 ~/.bash_history 2>/dev/null | grep -q "clear" || \
   history 2>/dev/null | tail -20 | grep -q "clear" || \
   [ -f "/tmp/step3_completed" ]; then
    
    # Mark as completed
    echo "clear-executed" > /tmp/step3_completed
    
    echo "✅ Excellent! You've mastered terminal cleanup."
    echo "🧹 Your screen is now fresh and clean!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo "💡 Remember: Ctrl+L is the keyboard shortcut for clear"
    echo "done"
    exit 0
else
    echo "❌ Please run the clear command using the executable code block above."
    echo "💡 Hint: Click the 'clear' command to execute it"
    echo "🔄 This will clean your terminal screen"
    echo ""
    echo "📌 Notice how your screen gets cleaned up!"
    exit 1
fi