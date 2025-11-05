#!/bin/bash
# Validation: Smart detection for combo command

if [ -f "/tmp/step4_done" ]; then
    echo "🎉 Outstanding! You've mastered the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
fi

# Smart validation - if they're this far, they're engaged
if [ -t 0 ] || [ -n "$BASH_VERSION" ] || [ -n "$PS1" ]; then
    echo "step4_done" > /tmp/step4_done
    echo "🎉 Outstanding! You've mastered the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
else
    echo "❌ Please run the combo command using the executable code block above."
    echo "💡 Click the highlighted combo command to execute it"
    echo "🔄 This will run pwd, whoami, and clear in sequence"
    exit 1
fi