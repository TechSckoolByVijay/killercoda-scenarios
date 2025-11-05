#!/bin/bash
# Verify: Combined commands execution

# Check if the user has run any combination of pwd, whoami, and clear
pwd_found=false
whoami_found=false
clear_found=false

# Check recent history for each command
if tail -20 ~/.bash_history 2>/dev/null | grep -q "pwd" || \
   history 2>/dev/null | tail -20 | grep -q "pwd"; then
    pwd_found=true
fi

if tail -20 ~/.bash_history 2>/dev/null | grep -q "whoami" || \
   history 2>/dev/null | tail -20 | grep -q "whoami"; then
    whoami_found=true
fi

if tail -20 ~/.bash_history 2>/dev/null | grep -q "clear" || \
   history 2>/dev/null | tail-20 | grep -q "clear"; then
    clear_found=true
fi

# Check if they've run the combo or completed previous steps
if [ -f "/tmp/step4_completed" ] || \
   ($pwd_found && $whoami_found && $clear_found) || \
   (tail -20 ~/.bash_history 2>/dev/null | grep -q "pwd.*whoami.*clear") || \
   (history 2>/dev/null | tail -20 | grep -q "pwd.*whoami.*clear"); then
    
    # Mark as completed
    echo "combo-mastery" > /tmp/step4_completed
    
    echo "🎉 Outstanding! You've mastered the terminal basics combo!"
    echo "🎯 You can now navigate, identify, and clean like a pro!"
    echo "💪 These foundational skills will serve you throughout your Linux journey!"
    echo "🚀 Ready for more advanced commands? Let's go!"
    echo "done"
    exit 0
else
    echo "❌ Please practice the terminal basics combination."
    echo "💡 Try running the commands above:"
    echo "   - pwd (check location)"
    echo "   - whoami (check identity)"  
    echo "   - clear (clean screen)"
    echo "   - Or try the combo: pwd && whoami && clear"
    echo ""
    echo "📌 Execute the commands to experience the full workflow!"
    exit 1
fi