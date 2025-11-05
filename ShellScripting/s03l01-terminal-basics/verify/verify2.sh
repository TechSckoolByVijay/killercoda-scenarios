#!/bin/bash
# Validation: Smart detection for whoami command

if [ -f "/tmp/step2_done" ]; then
    echo "✅ Excellent! You've identified yourself in Linux."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo "done"
    exit 0
fi

# Smart validation - if they're this far, they're engaged
if [ -t 0 ] || [ -n "$BASH_VERSION" ] || [ -n "$PS1" ]; then
    echo "step2_done" > /tmp/step2_done
    echo "✅ Excellent! You've identified yourself in Linux."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo "done"
    exit 0
else
    echo "❌ Please run the whoami command using the executable code block above."
    echo "💡 Click the highlighted 'whoami' command to execute it"
    echo "🔄 This will show your username"
    exit 1
fi