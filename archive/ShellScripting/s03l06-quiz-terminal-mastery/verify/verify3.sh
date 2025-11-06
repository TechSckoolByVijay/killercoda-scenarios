#!/bin/bash
# Verify: File Operations Quiz Part 3

mkdir_used=$(history | grep -c "mkdir")
touch_used=$(history | grep -c "touch")
cat_used=$(history | grep -c "cat")
head_used=$(history | grep -c "head")
tail_used=$(history | grep -c "tail")
grep_used=$(history | grep -c "grep")

# Check if files were created
myproject_exists=0
readme_exists=0
log_exists=0

[ -d "myproject" ] && myproject_exists=1
[ -f "myproject/readme.txt" ] || [ -f "readme.txt" ] && readme_exists=1
[ -f "large_log.txt" ] && log_exists=1

score=0
feedback=""

# Question 9: Project setup
if [ $mkdir_used -gt 0 ] && [ $touch_used -gt 0 ] && [ $myproject_exists -eq 1 ]; then
    score=$((score + 1))
    feedback="✅ Q9 Correct: Project structure created! "
elif [ $mkdir_used -gt 0 ] || [ $touch_used -gt 0 ]; then
    score=$((score + 1))
    feedback="✅ Q9 Partial: Used file creation commands! "
else
    feedback="❌ Q9 Missing: Need mkdir and touch commands. "
fi

# Question 10: Content viewing
if [ $cat_used -gt 0 ] && [ $readme_exists -eq 1 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q10 Correct: File content displayed! "
elif [ $cat_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q10 Partial: Used cat command! "
else
    feedback="${feedback}❌ Q10 Missing: Need to use 'cat' command. "
fi

# Question 11: Head and tail
if [ $head_used -gt 0 ] && [ $tail_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q11 Correct: File navigation mastered! "
elif [ $head_used -gt 0 ] || [ $tail_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q11 Partial: Used head or tail! "
else
    feedback="${feedback}❌ Q11 Missing: Need both 'head' and 'tail'. "
fi

# Question 12: Search with grep
if [ $grep_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q12 Correct: Search ninja skills! "
else
    feedback="${feedback}❌ Q12 Missing: Need 'grep' for searching. "
fi

echo "📊 FILE OPERATIONS QUIZ RESULTS:"
echo "$feedback"
echo ""
echo "🎯 Score: $score/4 questions correct"

if [ $score -eq 4 ]; then
    echo "📁 FILE MASTER! You can create, view, and search files like a pro!"
    echo "🚀 Ready for the ultimate Advanced Challenges!"
    echo "done"
    exit 0
elif [ $score -ge 2 ]; then
    echo "👍 Great file handling skills! Perfect the remaining techniques."
    echo "💡 Hint: Practice file creation, viewing, and searching commands"
    echo "done"
    exit 0
else
    echo "📚 Master these file operations:"
    echo "   • mkdir (create directories)"
    echo "   • touch (create files)"
    echo "   • cat (view files)"
    echo "   • head/tail (partial viewing)"
    echo "   • grep (search text)"
    exit 1
fi