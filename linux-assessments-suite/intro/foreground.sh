#!/bin/bash

echo "🚀 Preparing Linux Assessments Suite environment..."
echo "⏳ Setting up demo files and randomized lab..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
done

clear
echo "✅ Linux Assessments Suite Environment Ready!"
echo ""
echo "📁 Demo files created at: ~/demo"
echo "🎲 Randomized lab at: ~/lab_$(cat /tmp/lab-seed 2>/dev/null || echo '????')"
echo ""
echo "🎯 Ready for interactive learning:"
echo "   • Command discovery challenges"
echo "   • Practical verification tasks"
echo "   • Randomized problem solving"
echo "   • Terminal-only final exam"
echo ""
echo "Happy learning! 🐧"
echo ""