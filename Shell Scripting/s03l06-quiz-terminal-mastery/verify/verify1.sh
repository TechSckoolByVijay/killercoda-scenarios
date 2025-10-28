#!/bin/bash
# Verify: Terminal Basics Quiz Part 1

pwd_used=$(history | grep -c "pwd")
whoami_used=$(history | grep -c "whoami")
clear_used=$(history | grep -c "clear")
combo_used=$(history | grep -c "&&")

score=0
feedback=""

# Question 1: pwd
if [ $pwd_used -gt 0 ]; then
    score=$((score + 1))
    feedback="✅ Q1 Correct: You know where you are! "
else
    feedback="❌ Q1 Missing: Need to use 'pwd' command. "
fi

# Question 2: whoami
if [ $whoami_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q2 Correct: Identity confirmed! "
else
    feedback="${feedback}❌ Q2 Missing: Need to use 'whoami' command. "
fi

# Question 3: clear
if [ $clear_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q3 Correct: Clean workspace mastered! "
else
    feedback="${feedback}❌ Q3 Missing: Need to use 'clear' command. "
fi

# Question 4: command combination
if [ $combo_used -gt 0 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q4 Correct: Command chaining expert! "
else
    feedback="${feedback}❌ Q4 Missing: Need to combine commands with '&&'. "
fi

echo "📊 TERMINAL BASICS QUIZ RESULTS:"
echo "$feedback"
echo ""
echo "🎯 Score: $score/4 questions correct"

if [ $score -eq 4 ]; then
    echo "🏆 PERFECT! You've mastered terminal basics!"
    echo "🚀 Ready for Navigation Mastery challenges!"
    echo "done"
    exit 0
elif [ $score -ge 2 ]; then
    echo "👍 Good progress! Review the missing commands and try again."
    echo "💡 Hint: All basic commands are 3-6 letters long and very common"
    echo "done"
    exit 0
else
    echo "📚 Keep practicing the fundamental commands:"
    echo "   • pwd (where am I?)"
    echo "   • whoami (who am I?)" 
    echo "   • clear (clean screen)"
    echo "   • && (combine commands)"
    exit 1
fi