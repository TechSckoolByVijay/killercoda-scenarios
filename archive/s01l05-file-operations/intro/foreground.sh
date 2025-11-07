#!/bin/bash

echo "🛠️ Welcome to File Operations Workshop!"
echo "⏳ Setting up your operations lab..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
done

clear
echo "✅ File Operations Lab Ready!"
echo ""
echo "🧰 Your Operations Toolkit Today:"
echo "   📋 cp - Copy files and directories safely"
echo "   🚚 mv - Move and rename with precision"
echo "   🗑️ rm - Remove files responsibly"
echo "   🔍 find - Locate files anywhere"
echo ""
echo "🎯 You'll master:"
echo "   • Safe backup and copy strategies"
echo "   • Efficient file organization workflows"
echo "   • Responsible deletion practices"
echo "   • Powerful file discovery techniques"
echo ""
echo "💡 Think of this as your digital toolbox training!"
echo "   Every Linux pro needs these fundamental skills! 🔧"
echo ""
echo "Ready to become a file operations master? Let's begin! 🚀"
echo ""