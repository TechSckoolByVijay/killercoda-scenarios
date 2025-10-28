#!/bin/bash
# Verify: Advanced ls options usage

ls_long=$(history | grep -c "ls -l")
ls_all=$(history | grep -c "ls -a")
ls_human=$(history | grep -c "ls -.*h")
ls_sort=$(history | grep -c "ls -.*S\|ls -.*t")

advanced_count=$((ls_long + ls_all + ls_human + ls_sort))

if [ $advanced_count -ge 3 ]; then
    echo "🔥 AMAZING! You're an ls power user!"
    echo "✅ Advanced options mastered:"
    [ $ls_long -gt 0 ] && echo "   📋 Long format (-l)"
    [ $ls_all -gt 0 ] && echo "   👻 Hidden files (-a)"  
    [ $ls_human -gt 0 ] && echo "   📏 Human readable (-h)"
    [ $ls_sort -gt 0 ] && echo "   🔄 Sorting options (-S/-t)"
    echo "🎓 You've unlocked the full power of ls!"
    echo "done"
    exit 0
elif [ $advanced_count -ge 1 ]; then
    echo "✅ Good progress with advanced ls options!"
    echo "🎯 Try more options to master them all:"
    [ $ls_long -eq 0 ] && echo "   📋 Try: ls -l (detailed format)"
    [ $ls_all -eq 0 ] && echo "   👻 Try: ls -a (show hidden files)"
    [ $ls_human -eq 0 ] && echo "   📏 Try: ls -lh (human readable sizes)"
    [ $ls_sort -eq 0 ] && echo "   🔄 Try: ls -lhS (sort by size)"
    echo "done"
    exit 0
else
    echo "❌ Please explore advanced ls options:"
    echo "   📋 Try: ls -l (detailed information)"
    echo "   👻 Try: ls -a (include hidden files)"
    echo "   📏 Try: ls -lh (human readable sizes)"
    echo "   🔄 Try: ls -lhS (sort by size)"
    echo ""
    echo "💡 Hint: Combine flags like 'ls -lahS' for maximum power!"
    exit 1
fi