#!/bin/bash
# Verify: Complete navigation mastery

pwd_count=$(history | grep -c "pwd")
ls_count=$(history | grep -c "ls")
cd_count=$(history | grep -c "cd ")
combo_commands=$(history | grep -c "&&")

navigation_score=0
[ $pwd_count -ge 2 ] && navigation_score=$((navigation_score + 1))
[ $ls_count -ge 3 ] && navigation_score=$((navigation_score + 1))
[ $cd_count -ge 2 ] && navigation_score=$((navigation_score + 1))

if [ $navigation_score -eq 3 ]; then
    echo "🥷 CONGRATULATIONS! You are now a NAVIGATION NINJA!"
    echo ""
    echo "🏆 Master Skills Achieved:"
    echo "   📍 pwd: Used $pwd_count times - You always know where you are"
    echo "   👀 ls: Used $ls_count times - You can see your surroundings"
    echo "   🚀 cd: Used $cd_count times - You can teleport anywhere"
    
    if [ $combo_commands -gt 0 ]; then
        echo "   ⚡ Command combinations: $combo_commands times - You're a pro!"
    fi
    
    echo ""
    echo "🎯 The Navigation Triangle is now your superpower:"
    echo "   1. Where am I? (pwd)"
    echo "   2. What's here? (ls)"  
    echo "   3. Where to next? (cd)"
    echo ""
    echo "🚀 You're ready to navigate any Linux system like a pro!"
    echo "done"
    exit 0
elif [ $navigation_score -ge 2 ]; then
    echo "✅ Great navigation skills! Almost there..."
    echo "🎯 Complete the navigation triangle:"
    [ $pwd_count -lt 2 ] && echo "   📍 Use pwd more to track your location"
    [ $ls_count -lt 3 ] && echo "   👀 Practice ls to explore directories"
    [ $cd_count -lt 2 ] && echo "   🚀 Use cd to move around more"
    echo ""
    echo "💡 Try the master challenge: cd / && ls -lh && cd /usr/local && pwd"
    echo "done"
    exit 0
else
    echo "❌ Master the navigation triangle to become a ninja:"
    echo "   📍 pwd (at least 2 times) - Know your location"
    echo "   👀 ls (at least 3 times) - Explore your surroundings"  
    echo "   🚀 cd (at least 2 times) - Move around the filesystem"
    echo ""
    echo "💡 Hint: Try this sequence: pwd → ls -la → cd /etc → pwd → cd ~ → ls"
    exit 1
fi