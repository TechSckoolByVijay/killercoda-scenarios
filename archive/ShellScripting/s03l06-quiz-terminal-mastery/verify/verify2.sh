#!/bin/bash
# Verify: Navigation Mastery Quiz Part 2

ls_advanced=$(history | grep -c "ls -.*[lah]")
cd_root=$(history | grep -c "cd /")
cd_relative=$(history | grep -c "cd \.\.")
ls_time=$(history | grep -c "ls -.*t")
head_used=$(history | grep -c "head")

score=0
feedback=""

# Question 5: Advanced ls
if [ $ls_advanced -gt 0 ]; then
    score=$((score + 1))
    feedback="✅ Q5 Correct: Advanced listing mastered! "
else
    feedback="❌ Q5 Missing: Need 'ls -lah' or similar. "
fi

# Question 6: Root exploration
if [ $cd_root -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q6 Correct: Root directory explored! "
else
    feedback="${feedback}❌ Q6 Missing: Need 'cd /' to explore root. "
fi

# Question 7: Relative navigation
if [ $cd_relative -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q7 Correct: Relative paths mastered! "
else
    feedback="${feedback}❌ Q7 Missing: Need relative navigation with '../..' "
fi

# Question 8: Time-sorted listing
if [ $ls_time -gt 0 ] && [ $head_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q8 Correct: Time sorting + filtering expert! "
elif [ $ls_time -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q8 Partial: Used time sorting! "
else
    feedback="${feedback}❌ Q8 Missing: Need 'ls -lt' and 'head'. "
fi

echo "📊 NAVIGATION MASTERY QUIZ RESULTS:"
echo "$feedback"
echo ""
echo "🎯 Score: $score/4 questions correct"

if [ $score -eq 4 ]; then
    echo "🧭 NAVIGATION NINJA! You can move through Linux like a pro!"
    echo "🚀 Ready for File Operations challenges!"
    echo "done"
    exit 0
elif [ $score -ge 2 ]; then
    echo "👍 Solid navigation skills! Polish the remaining techniques."
    echo "💡 Hint: Master ls flags and path types (absolute vs relative)"
    echo "done"
    exit 0
else
    echo "📚 Practice more navigation commands:"
    echo "   • ls with flags (-l, -a, -h, -t)"
    echo "   • cd with absolute paths (/)"
    echo "   • cd with relative paths (..)"
    echo "   • Combining commands with pipes"
    exit 1
fi