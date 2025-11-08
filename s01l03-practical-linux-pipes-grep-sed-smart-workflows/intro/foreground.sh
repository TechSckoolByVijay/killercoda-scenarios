#!/bin/bash

echo "🔧 Setting up your Linux text processing workshop..."
echo "📊 Loading realistic log files and structured data..."

# Wait for background setup to complete
while [ ! -f /tmp/background_setup_done ]; do 
    sleep 1
    echo "   Preparing sample data files..."
done

clear
echo "✅ Linux Text Processing Workshop Ready!"
echo ""
echo "🎯 What's Prepared For You:"
echo "   📁 /workspace/logs/ - Realistic application and system logs"
echo "   📊 /workspace/data/ - Structured data files (users, services, sales)"
echo "   🔍 Sample error patterns, access logs, and system events"
echo "   📈 Ready-to-analyze datasets for pipeline practice"
echo ""
echo "💡 Workshop Focus:"
echo "   • Build powerful command pipelines"
echo "   • Search and filter log data with grep"
echo "   • Extract columns and count frequencies"
echo "   • Transform text with sed patterns"
echo "   • Solve real-world data analysis challenges"
echo ""
echo "🚀 Ready to master Linux text processing?"
echo "   Let's start building some powerful pipelines..."
echo ""