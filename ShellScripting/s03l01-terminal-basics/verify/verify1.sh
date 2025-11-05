#!/bin/bash
# Simple validation: Check if completion marker exists

if [ -f "/tmp/step1_done" ]; then
    echo "✅ Perfect! You've executed the pwd command and marked completion."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run both commands above:"
    echo "  1. pwd (to see your location)"
    echo "  2. touch /tmp/step1_done (to mark completion)"
    echo "💡 Click both executable code blocks in order"
    exit 1
fi