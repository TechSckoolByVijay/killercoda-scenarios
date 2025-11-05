#!/bin/bash
# Intelligent validation: Check if whoami was actually executed

VALIDATION_PASSED=false

# Method 1: Check current session history
if bash -c "history | grep -q whoami" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 2: Check bash history file directly
if [ -f ~/.bash_history ] && grep -q "whoami" ~/.bash_history 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 3: Check shell history from all possible sources
for hist_file in ~/.bash_history ~/.history ~/.sh_history; do
    if [ -f "$hist_file" ] && grep -q "whoami" "$hist_file" 2>/dev/null; then
        VALIDATION_PASSED=true
        break
    fi
done

# Method 4: Check system logs for whoami execution
if journalctl --no-pager -n 50 2>/dev/null | grep -q "whoami" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

if [ "$VALIDATION_PASSED" = true ]; then
    echo "✅ Perfect! You've successfully executed the whoami command."
    echo "👤 You are: $(whoami)"
    echo "🎯 Understanding user identity is crucial for system security!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the whoami command using the code block above."
    echo "💡 Click the 'whoami' command to run it in the terminal"
    echo "🔄 This will show your username"
    echo ""
    echo "Debug: If you did run whoami, try running it again and then click Check"
    exit 1
fi