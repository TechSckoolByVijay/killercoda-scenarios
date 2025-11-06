#!/bin/bash

echo "🚀 Preparing your Linux CLI learning environment..."
echo "⏳ Setting up demo files and directories..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
done

clear
echo "✅ Linux CLI Warmup Environment Ready!"
echo ""
echo "📁 Demo files created at: ~/demo"
echo "📊 Practice files with different timestamps ready for sorting"
echo ""
echo "🎯 You can now practice essential Linux commands:"
echo "   • pwd, whoami, cd"
echo "   • ls with various flags and sorting options"
echo ""
echo "Happy learning! 🐧"
echo ""