#!/bin/bash
# Intelligent validation: Check if clear was actually executed

VALIDATION_PASSED=false

# Method 1: Check current session history
if bash -c "history | grep -q clear" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 2: Check bash history file directly
if [ -f ~/.bash_history ] && grep -q "clear" ~/.bash_history 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 3: Check shell history from all possible sources
for hist_file in ~/.bash_history ~/.history ~/.sh_history; do
    if [ -f "$hist_file" ] && grep -q "clear" "$hist_file" 2>/dev/null; then
        VALIDATION_PASSED=true
        break
    fi
done

# Method 4: Special case for clear - check if Ctrl+L was used (harder to detect)
if journalctl --no-pager -n 50 2>/dev/null | grep -q "clear\|Ctrl" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

if [ "$VALIDATION_PASSED" = true ]; then
    echo "✅ Excellent! You've successfully executed the clear command."
    echo "🧹 Your screen management skills are improving!"
    echo "🎯 You can now manage terminal clutter like a pro!"
    echo "💡 Remember: Ctrl+L is the keyboard shortcut for clear"
    echo "done"
    exit 0
else
    echo "❌ Please execute the clear command using the code block above."
    echo "💡 Click the 'clear' command to run it in the terminal"
    echo "🔄 This will clean your terminal screen"
    echo ""
    echo "Debug: If you did run clear, try running it again and then click Check"
    exit 1
fi