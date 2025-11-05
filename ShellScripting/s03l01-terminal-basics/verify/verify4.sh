#!/bin/bash
# Validation: Actually check if combo commands were executed

# Check bash history for any of the combo commands
if (history | grep -q "pwd.*whoami.*clear\|pwd.*whoami\|whoami.*clear" 2>/dev/null) || \
   (tail -20 ~/.bash_history 2>/dev/null | grep -q "pwd.*whoami.*clear\|pwd.*whoami\|whoami.*clear") || \
   (history | grep -q "pwd" && history | grep -q "whoami" && history | grep -q "clear" 2>/dev/null); then
    
    echo "🎉 Outstanding! You've executed the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
else
    echo "❌ Please execute the combo command using the code block above."
    echo "💡 Click the 'pwd && whoami && clear' command to run it"
    echo "🔄 This will run all three commands in sequence"
    exit 1
fi