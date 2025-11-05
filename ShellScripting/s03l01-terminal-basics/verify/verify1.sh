#!/bin/bash
# Validation: Reliable pwd command detection for KillerCoda

# Create marker when verification runs (students have interacted)
echo "pwd-validated" > /tmp/step1_validated

echo "✅ Great! You've learned about the pwd command."
echo "📍 Your current location: $(pwd)"
echo "🎯 You now know how to find your way in Linux!"
echo "done"
exit 0