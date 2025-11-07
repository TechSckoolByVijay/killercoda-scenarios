#!/bin/bash

echo "🔨 Setting up your Linux file operations workshop..."
echo "📁 Creating realistic project files and directories..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
    echo "   Still preparing workshop environment..."
done

clear
echo "✅ Linux File Operations Workshop Ready!"
echo ""
echo "🎯 What's Prepared For You:"
echo "   📁 /workshop - Your main practice area"
echo "   📄 Sample log files, config files, and project files"
echo "   📝 Text files ready for editing and manipulation"
echo "   🔧 Scripts to practice with permissions"
echo "   🏠 ~/welcome.txt - Starting point in your home"
echo ""
echo "💡 Workshop Focus:"
echo "   • Create, edit, and organize files"
echo "   • Copy, move, and delete safely"
echo "   • Master file permissions and ownership"
echo "   • Work with real-world file scenarios"
echo ""
echo "🚀 Ready to manipulate files like a pro?"
echo "   Let's start by creating your first files..."
echo ""