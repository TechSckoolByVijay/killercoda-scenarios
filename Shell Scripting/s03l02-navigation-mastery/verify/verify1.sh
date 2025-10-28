#!/bin/bash
# Verify: ls command usage and understanding

ls_basic=$(history | grep -c "ls$")
ls_advanced=$(history | grep -c "ls -")

if [ $ls_basic -gt 0 ] || [ $ls_advanced -gt 0 ]; then
    echo "✅ Great! You've started exploring with the ls command."
    echo "👀 You can now see what's around you in the Linux world!"
    
    if [ $ls_advanced -gt 0 ]; then
        echo "🚀 Bonus: You even tried advanced ls options!"
    fi
    
    echo "done"
    exit 0
else
    echo "❌ Please try the 'ls' command to see the files and directories around you."
    echo "💡 Hint: Type 'ls' and press Enter to list the contents"
    echo "🔥 Bonus: Try 'ls -l' for detailed information"
    exit 1
fi