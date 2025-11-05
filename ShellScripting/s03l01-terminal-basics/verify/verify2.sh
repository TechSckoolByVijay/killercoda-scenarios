#!/bin/bash
# Validation: Actually check if whoami command was executed

# Check bash history for whoami command execution
if history | grep -q "whoami" 2>/dev/null || \
   tail -20 ~/.bash_history 2>/dev/null | grep -q "whoami" || \
   (ps aux | grep -v grep | grep -q "whoami") 2>/dev/null; then
    
    echo "✅ Excellent! You've executed the whoami command."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the whoami command using the code block above."
    echo "💡 Click the 'whoami' command to run it in the terminal"
    echo "🔄 This will show your username in the system"
    exit 1
fi