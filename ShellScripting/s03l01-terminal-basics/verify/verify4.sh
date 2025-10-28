#!/bin/bash
# Verify: All commands mastery
# Check if user completed the command combination challenge

if [ -f "/tmp/step4_completed" ]; then
    echo "🎉 CONGRATULATIONS! You've mastered the Terminal Basics trinity!"
    echo ""
    echo "🏆 Skills Achieved:"
    echo "✅ pwd - You know where you are: $(pwd)"
    echo "✅ whoami - You know who you are: $(whoami)"  
    echo "✅ clear - You keep things organized"
    echo "✅ Command chaining - You're a combo master!"
    echo ""
    echo "🚀 You're ready for the next adventure in Linux navigation!"
    echo "🥷 The terminal is no longer scary - it's your friend!"
    echo "done"
    exit 0
else
    echo "❌ Please complete the command combination challenge above."
    echo "💡 Hint: Run the final 'pwd && whoami && clear && echo...' command"
    echo "🎯 This demonstrates mastery of all three basic commands"
    echo "🔄 Make sure to execute the complete combo command to finish"
    exit 1
fi