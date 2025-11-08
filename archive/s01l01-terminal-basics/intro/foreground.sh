#!/bin/bash

echo "🐧 Welcome to Linux Terminal Basics!"
echo "⏳ Preparing your learning environment..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
done

clear
echo "✅ Terminal Environment Ready!"
echo ""
echo "🎯 Today you'll master 3 essential commands:"
echo "   • pwd  - Where am I?"
echo "   • whoami - Who am I?"
echo "   • clear - Clean my screen"
echo ""
echo "💡 Think of this as your first conversation with Linux!"
echo "   You speak → Linux responds 🤝"
echo ""
echo "Ready to begin? Let's start talking to Linux! 🚀"
echo ""