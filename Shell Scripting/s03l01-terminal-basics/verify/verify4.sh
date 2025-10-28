#!/bin/bash
# Verify: All three commands used together
# Check if user has practiced all the basic commands

pwd_count=$(history | grep -c "pwd")
whoami_count=$(history | grep -c "whoami") 
clear_count=$(history | grep -c "clear")

if [ $pwd_count -gt 0 ] && [ $whoami_count -gt 0 ] && [ $clear_count -gt 0 ]; then
    echo "🎉 CONGRATULATIONS! You've mastered the Terminal Basics trinity!"
    echo "✅ pwd: Used $pwd_count time(s) - You know where you are"
    echo "✅ whoami: Used $whoami_count time(s) - You know who you are"  
    echo "✅ clear: Used $clear_count time(s) - You keep things tidy"
    echo ""
    echo "🚀 You're ready for the next adventure in Linux navigation!"
    echo "done"
    exit 0
else
    echo "❌ Practice all three commands to complete this lesson:"
    [ $pwd_count -eq 0 ] && echo "   📍 Still need to try: pwd"
    [ $whoami_count -eq 0 ] && echo "   🆔 Still need to try: whoami"
    [ $clear_count -eq 0 ] && echo "   🧹 Still need to try: clear"
    echo ""
    echo "💡 Hint: Run each command at least once to master the basics!"
    exit 1
fi