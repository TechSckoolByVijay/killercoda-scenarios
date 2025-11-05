#!/bin/bash
# Verify: whoami command execution

# Check if whoami appears in recent history
if tail -20 ~/.bash_history 2>/dev/null | grep -q "whoami" || \
   history 2>/dev/null | tail -20 | grep -q "whoami" || \
   [ -f "/tmp/step2_completed" ]; then
    
    # Mark as completed
    echo "whoami-executed" > /tmp/step2_completed
    current_user=$(whoami)
    
    echo "✅ Perfect! You've discovered your Linux identity."
    echo "🆔 You are logged in as: $current_user"
    echo "🎯 You now understand user identification in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please run the whoami command using the executable code block above."
    echo "💡 Hint: Click the 'whoami' command to execute it"
    echo "🔄 This will show your username"
    echo ""
    echo "📌 Make sure to execute the command in the terminal!"
    exit 1
fi