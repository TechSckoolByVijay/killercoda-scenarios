#!/bin/bash
# Verify: clear command execution required

if [ -f "/tmp/clear_completed" ]; then
    echo "✅ Outstanding! You've executed the clear command."
    echo "🧹 Your screen management skills are improving!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo ""
    echo "💡 Remember: clear refreshes your terminal screen"
    echo "⌨️  Pro tip: Ctrl+L does the same thing!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the clear command first."
    echo "💡 Click the 'clear && touch /tmp/clear_completed' command above"
    echo "🔄 This will clean your screen AND mark this step complete"
    exit 1
fi