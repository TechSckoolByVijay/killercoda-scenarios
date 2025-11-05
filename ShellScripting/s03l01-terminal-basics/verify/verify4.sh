#!/bin/bash
# Simple validation: Check if completion marker exists

if [ -f "/tmp/step4_done" ]; then
    echo "🎉 Outstanding! You've mastered the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
else
    echo "❌ Please run both commands above:"
    echo "  1. pwd && whoami && clear (the complete combo)"
    echo "  2. touch /tmp/step4_done (to mark completion)"
    echo "💡 Click both executable code blocks in order"
    exit 1
fi