#!/bin/bash
# Verify: whoami command execution required

if [ -f "/tmp/whoami_completed" ]; then
    echo "✅ Perfect! You've executed the whoami command."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo ""
    echo "💡 Remember: whoami shows your current username"
    echo "🔐 This helps you understand your privileges and permissions"
    echo "done"
    exit 0
else
    echo "❌ Please execute the whoami command first."
    echo "💡 Click the 'whoami && touch /tmp/whoami_completed' command above"
    echo "🔄 This will show your username AND mark this step complete"
    exit 1
fi