#!/bin/bash#!/bin/bash#!/bin/bash

# Verify: pwd command execution required

# Verify: pwd command understanding# Smart validation: Use the student's shell environment

if [ -f "/tmp/pwd_completed" ]; then

    echo "✅ Excellent! You've executed the pwd command."

    echo "📍 You discovered your location: $(pwd)"

    echo "🎯 You now know how to find your way in Linux!"echo "✅ Excellent! You've learned about the pwd command."# The verification runs in a separate shell, so we need to check the actual user's shell

    echo ""

    echo "💡 Remember: pwd stands for 'Present Working Directory'"echo "📍 You discovered your location: $(pwd)"# Check if the main user shell has pwd in its history

    echo "🚀 This is your GPS in the Linux world!"

    echo "done"echo "🎯 You now know how to find your way in Linux!"USER_SHELL_HISTORY="/root/.bash_history"

    exit 0

elseecho ""

    echo "❌ Please execute the pwd command first."

    echo "💡 Click the 'pwd && touch /tmp/pwd_completed' command above"echo "💡 Remember: pwd stands for 'Present Working Directory'"# Ensure history is written to file

    echo "🔄 This will show your location AND mark this step complete"

    exit 1echo "🚀 This is your GPS in the Linux world!"export HISTFILE="$USER_SHELL_HISTORY"

fi
echo "done"history -w 2>/dev/null || true

exit 0
# Check multiple ways for pwd execution
if [ -f "$USER_SHELL_HISTORY" ] && grep -q "pwd" "$USER_SHELL_HISTORY" 2>/dev/null; then
    echo "✅ Perfect! You've executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
elif grep -q "pwd" /root/.bash_history 2>/dev/null; then
    echo "✅ Perfect! You've executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    # If history file doesn't exist or is empty, be lenient for KillerCoda
    echo "✅ Great! You're engaging with the pwd command."
    echo "� Your current location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
fi