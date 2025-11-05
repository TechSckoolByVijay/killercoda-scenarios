#!/bin/bash
# Intelligent validation: Check if pwd was actually executed

# Check multiple sources for pwd execution evidence
VALIDATION_PASSED=false

# Method 1: Check current session history (different ways)
if bash -c "history | grep -q pwd" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 2: Check bash history file directly
if [ -f ~/.bash_history ] && grep -q "pwd" ~/.bash_history 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 3: Check if there's evidence of terminal interaction with pwd
if [ -f ~/.bashrc ] && ps aux | grep -q bash 2>/dev/null; then
    # They have an active bash session, check for pwd in various logs
    if journalctl --no-pager -n 50 2>/dev/null | grep -q "pwd" 2>/dev/null; then
        VALIDATION_PASSED=true
    fi
fi

# Method 4: Check shell history from all possible sources
for hist_file in ~/.bash_history ~/.history ~/.sh_history; do
    if [ -f "$hist_file" ] && grep -q "pwd" "$hist_file" 2>/dev/null; then
        VALIDATION_PASSED=true
        break
    fi
done

if [ "$VALIDATION_PASSED" = true ]; then
    echo "✅ Excellent! You've successfully executed the pwd command."
    echo "📍 You discovered your location: $(pwd)"
    echo "🎯 You now know how to find your way in Linux!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the pwd command using the code block above."
    echo "💡 Click the 'pwd' command to run it in the terminal"
    echo "🔄 This will show your current directory location"
    echo ""
    echo "Debug: If you did run pwd, try running it again and then click Check"
    exit 1
fi