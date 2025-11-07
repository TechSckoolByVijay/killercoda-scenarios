#!/bin/bash

echo "🚀 Setting up your Linux CLI learning environment..."
echo "⏳ Creating practice files and directories..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
    echo "   Still setting up..."
done

clear
echo "✅ Linux CLI Basic Commands Environment Ready!"
echo ""
echo "🎯 What's Prepared For You:"
echo "   📁 /practice - Your main practice directory"
echo "   📄 Various file types (txt, md, js, css, csv)"
echo "   📂 Nested directory structure to explore"
echo "   🕐 Files with different timestamps for sorting practice"
echo "   🔗 Symbolic links to discover"
echo ""
echo "💡 Pro Tip: Don't worry about breaking anything - this is a safe learning space!"
echo ""
echo "🎓 Ready to master essential Linux commands?"
echo "   Let's start with finding out where you are in the system..."
echo ""