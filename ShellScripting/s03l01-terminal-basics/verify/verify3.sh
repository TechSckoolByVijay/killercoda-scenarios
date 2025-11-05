#!/bin/bash
# Simple validation: Check if completion marker exists

if [ -f "/tmp/step3_done" ]; then
    echo "✅ Perfect! You've mastered terminal cleanup."
    echo "🧹 Your screen is now fresh and clean!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo "💡 Remember: Ctrl+L is the keyboard shortcut for clear"
    echo "done"
    exit 0
else
    echo "❌ Please run both commands above:"
    echo "  1. clear (to clean your screen)"
    echo "  2. touch /tmp/step3_done (to mark completion)"
    echo "� Click both executable code blocks in order"
    exit 1
fi