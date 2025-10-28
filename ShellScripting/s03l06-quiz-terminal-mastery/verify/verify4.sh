#!/bin/bash
# Verify: Advanced Challenges Quiz Part 4

grep_used=$(history | grep -c "grep")
mkdir_p_used=$(history | grep -c "mkdir -p")
wc_used=$(history | grep -c "wc")
complex_commands=$(history | grep -c "\$(\||\|&&")

# Check for file existence and content
findings_exists=0
app_log_exists=0
backup_dir_exists=0

[ -f "findings.txt" ] && findings_exists=1
[ -f "app.log" ] && app_log_exists=1
[ -d "/tmp/backup" ] || [ -d "backup" ] && backup_dir_exists=1

score=0
feedback=""
advanced_score=0

# Question 13: System administration scenario
sysadmin_score=0
[ $grep_used -gt 0 ] && sysadmin_score=$((sysadmin_score + 1))
[ $mkdir_p_used -gt 0 ] && sysadmin_score=$((sysadmin_score + 1))
[ $findings_exists -eq 1 ] && sysadmin_score=$((sysadmin_score + 1))

if [ $sysadmin_score -eq 3 ]; then
    score=$((score + 1))
    feedback="✅ Q13 EXCELLENT: Complete sysadmin workflow! "
    advanced_score=$((advanced_score + 3))
elif [ $sysadmin_score -ge 2 ]; then
    score=$((score + 1))
    feedback="✅ Q13 Good: Most sysadmin tasks completed! "
    advanced_score=$((advanced_score + 2))
elif [ $sysadmin_score -ge 1 ]; then
    feedback="✅ Q13 Partial: Some sysadmin skills shown. "
    advanced_score=$((advanced_score + 1))
else
    feedback="❌ Q13 Missing: Need grep, mkdir -p, and file creation. "
fi

# Question 14: Log analysis pipeline
pipeline_score=0
[ $wc_used -gt 0 ] && pipeline_score=$((pipeline_score + 1))
[ $grep_used -gt 1 ] && pipeline_score=$((pipeline_score + 1))
[ $complex_commands -gt 0 ] && pipeline_score=$((pipeline_score + 1))
[ $app_log_exists -eq 1 ] && pipeline_score=$((pipeline_score + 1))

if [ $pipeline_score -eq 4 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q14 MASTERFUL: Complete log analysis pipeline! "
    advanced_score=$((advanced_score + 4))
elif [ $pipeline_score -ge 3 ]; then
    score=$((score + 1))
    feedback="${feedback}✅ Q14 Advanced: Strong pipeline skills! "
    advanced_score=$((advanced_score + 3))
elif [ $pipeline_score -ge 2 ]; then
    feedback="${feedback}✅ Q14 Intermediate: Good analysis techniques! "
    advanced_score=$((advanced_score + 2))
elif [ $pipeline_score -ge 1 ]; then
    feedback="${feedback}✅ Q14 Basic: Some analysis skills shown. "
    advanced_score=$((advanced_score + 1))
else
    feedback="${feedback}❌ Q14 Missing: Need wc, grep, and command chaining. "
fi

echo "📊 ADVANCED CHALLENGES RESULTS:"
echo "$feedback"
echo ""
echo "🎯 Score: $score/2 questions correct"
echo "⚡ Advanced Skills: $advanced_score/7 points"

# Final overall assessment
if [ $score -eq 2 ] && [ $advanced_score -ge 6 ]; then
    echo ""
    echo "🏆 TERMINAL MASTER ACHIEVED!"
    echo "🔥 You've demonstrated EXPERT-level Linux skills!"
    echo "✨ You can handle any real-world terminal challenge!"
    echo ""
    echo "🎓 CERTIFICATIONS EARNED:"
    echo "   ✅ Terminal Basics Expert"
    echo "   ✅ Navigation Ninja"  
    echo "   ✅ File Operations Master"
    echo "   ✅ Advanced Problem Solver"
    echo ""
    echo "🚀 You're ready for professional Linux environments!"
    echo "done"
    exit 0
elif [ $score -eq 2 ] && [ $advanced_score -ge 4 ]; then
    echo ""
    echo "🥇 ADVANCED TERMINAL USER!"
    echo "💪 You have strong practical Linux skills!"
    echo "🎯 Minor polish needed for expert level."
    echo "done"
    exit 0
elif [ $score -ge 1 ]; then
    echo ""
    echo "👍 INTERMEDIATE SUCCESS!"
    echo "📈 You're on the path to mastery!"
    echo "💡 Focus on command chaining and complex workflows."
    echo "done"
    exit 0
else
    echo ""
    echo "📚 KEEP PRACTICING!"
    echo "🎯 Focus on these advanced skills:"
    echo "   • Command combinations with && and |"
    echo "   • File analysis with wc, grep, head, tail"
    echo "   • Directory creation with mkdir -p"
    echo "   • Real-world problem solving workflows"
    exit 1
fi