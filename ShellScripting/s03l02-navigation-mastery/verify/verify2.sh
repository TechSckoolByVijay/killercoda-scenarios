#!/bin/bash
# Verify: Understanding of paths and path exploration

root_explored=$(history | grep -c "ls /")
relative_explored=$(history | grep -c "ls \.\.")
pwd_used=$(history | grep -c "pwd")

if [ $root_explored -gt 0 ] && [ $pwd_used -gt 0 ]; then
    echo "✅ Excellent! You've explored both absolute and relative paths."
    echo "🗺️ You understand the Linux filesystem structure!"
    echo "📍 Current location: $(pwd)"
    
    if [ $relative_explored -gt 0 ]; then
        echo "🎯 Bonus: You used relative path navigation (..)!"
    fi
    
    echo "done"
    exit 0
else
    echo "❌ Please explore paths to understand Linux navigation:"
    [ $root_explored -eq 0 ] && echo "   🏠 Try: ls / (explore root directory)"
    [ $pwd_used -eq 0 ] && echo "   📍 Try: pwd (check your location)"
    [ $relative_explored -eq 0 ] && echo "   ⬆️ Try: ls .. (see parent directory)"
    echo ""
    echo "💡 Hint: Use both absolute paths (/) and relative paths (..) to navigate"
    exit 1
fi