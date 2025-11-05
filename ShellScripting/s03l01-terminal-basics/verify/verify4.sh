#!/bin/bash
# Intelligent validation: Check if combo commands were actually executed

VALIDATION_PASSED=false

# Check if they executed the combo command or individual commands
# Method 1: Check for combo command in history
if bash -c "history | grep -E 'pwd.*whoami.*clear|pwd.*&&.*whoami.*&&.*clear'" 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 2: Check bash history file for combo
if [ -f ~/.bash_history ] && grep -E "pwd.*whoami.*clear|pwd.*&&.*whoami.*&&.*clear" ~/.bash_history 2>/dev/null; then
    VALIDATION_PASSED=true
fi

# Method 3: Check if all three commands were executed separately
PWD_FOUND=false
WHOAMI_FOUND=false
CLEAR_FOUND=false

for hist_file in ~/.bash_history ~/.history ~/.sh_history; do
    if [ -f "$hist_file" ]; then
        if grep -q "pwd" "$hist_file" 2>/dev/null; then PWD_FOUND=true; fi
        if grep -q "whoami" "$hist_file" 2>/dev/null; then WHOAMI_FOUND=true; fi
        if grep -q "clear" "$hist_file" 2>/dev/null; then CLEAR_FOUND=true; fi
    fi
done

# If all three commands were found, consider it validated
if [ "$PWD_FOUND" = true ] && [ "$WHOAMI_FOUND" = true ] && [ "$CLEAR_FOUND" = true ]; then
    VALIDATION_PASSED=true
fi

if [ "$VALIDATION_PASSED" = true ]; then
    echo "🎉 Outstanding! You've mastered the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the combo command using the code block above."
    echo "💡 Click the 'pwd && whoami && clear' command to run it"
    echo "🔄 This will run all three commands in sequence"
    echo ""
    echo "Debug: Try running the combo command again and then click Check"
    exit 1
fi