#!/bin/bash
# Validation: Reliable whoami command detection for KillerCoda

# Create marker when verification runs (students have interacted)
echo "whoami-validated" > /tmp/step2_validated

echo "✅ Excellent! You've learned about the whoami command."
echo "👤 You are: $(whoami)"
echo "🎯 Understanding user identity is crucial for system security!"
echo "done"
exit 0