#!/bin/bash
# Verify: cd command usage and navigation

cd_absolute=$(history | grep -c "cd /")
cd_relative=$(history | grep -c "cd \.\.")
cd_home=$(history | grep -c "cd ~\|cd$")

if [ $cd_absolute -gt 0 ] && [ $cd_relative -gt 0 ]; then
    echo "✅ Outstanding! You've mastered both absolute and relative navigation."
    echo "🚀 You can teleport anywhere in the Linux filesystem!"
    echo "📍 You're currently in: $(pwd)"
    
    if [ $cd_home -gt 0 ]; then
        echo "🏡 Bonus: You know how to get home quickly!"
    fi
    
    echo "done"
    exit 0
elif [ $cd_absolute -gt 0 ] || [ $cd_relative -gt 0 ]; then
    echo "✅ Good start with cd command!"
    echo "🎯 To complete this step, try both:"
    [ $cd_absolute -eq 0 ] && echo "   📁 Absolute path: cd /etc"
    [ $cd_relative -eq 0 ] && echo "   ⬆️ Relative path: cd .."
    echo "done"
    exit 0
else
    echo "❌ Please practice navigation with the cd command:"
    echo "   📁 Try: cd /etc (absolute path navigation)"
    echo "   ⬆️ Try: cd .. (relative path navigation)"
    echo "   🏡 Try: cd ~ (go home)"
    echo ""
    echo "💡 Hint: Use cd to change directories, then pwd to see where you are"
    exit 1
fi