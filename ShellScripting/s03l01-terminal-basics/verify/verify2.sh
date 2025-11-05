#!/bin/bash
# Simple validation: Check if completion marker exists

if [ -f "/tmp/step2_done" ]; then
    echo "✅ Excellent! You've identified yourself in Linux."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo "done"
    exit 0
else
    echo "❌ Please run both commands above:"
    echo "  1. whoami (to see your username)"
    echo "  2. touch /tmp/step2_done (to mark completion)"
    echo "� Click both executable code blocks in order"
    exit 1
fi