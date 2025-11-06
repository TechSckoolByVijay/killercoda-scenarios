#!/bin/bash

echo "🥷 Welcome to Search Ninja Training!"
echo "⏳ Preparing your search dojo..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
done

clear
echo "✅ Search Ninja Dojo Ready!"
echo ""
echo "🎯 Your Training Arsenal Today:"
echo "   🔍 grep - Master text searching"
echo "   📊 Rich practice files with real scenarios"
echo "   ⚡ Advanced filtering techniques"
echo ""
echo "🥷 You'll master:"
echo "   • Finding text in files instantly"
echo "   • Advanced search options (-i, -n, -v, -c)"
echo "   • Filtering command outputs with pipes"
echo "   • Real-world log analysis techniques"
echo ""
echo "💡 Think of grep as your photographic memory + speed reading!"
echo "   Find any needle in any haystack in seconds! 🔍"
echo ""
echo "Ready to begin your ninja search training? Let's go! 🚀"
echo ""