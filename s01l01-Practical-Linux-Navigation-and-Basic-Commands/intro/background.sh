#!/bin/bash
set -x # Enable verbose logging for debugging

echo "Setting up 'Getting Started with Basic Commands Part 1' environment..." 

# Create practice directory structure
PRACTICE_DIR="/practice"
sudo mkdir -p "$PRACTICE_DIR/documents/reports" 
sudo mkdir -p "$PRACTICE_DIR/projects/web-app/src"
sudo mkdir -p "$PRACTICE_DIR/downloads"
sudo mkdir -p "$PRACTICE_DIR/temp"

# Create files with different types and timestamps
cd "$PRACTICE_DIR"

# Documents
sudo bash -c 'echo "Welcome to Linux CLI learning!" > documents/welcome.txt'
sudo bash -c 'echo "This is a sample report for practice" > documents/reports/monthly-report.txt'
sudo bash -c 'echo "Meeting notes from today" > documents/notes.md'

# Projects
sudo bash -c 'echo "console.log(\"Hello Linux!\");" > projects/web-app/src/main.js'
sudo bash -c 'echo "body { font-family: Arial; }" > projects/web-app/src/style.css'
sudo bash -c 'echo "# My Web App\nA sample project" > projects/README.md'

# Downloads (simulated downloads)
sudo bash -c 'echo "Sample data for analysis" > downloads/data.csv'
sudo bash -c 'echo "Installation package contents" > downloads/package.tar'

# Create some hidden files
sudo bash -c 'echo "Hidden configuration" > .config'
sudo bash -c 'echo "Environment settings" > .env'

# Set different timestamps for realistic sorting
sudo touch -d "2025-11-01 09:00:00" documents/welcome.txt
sudo touch -d "2025-11-02 14:30:00" documents/reports/monthly-report.txt  
sudo touch -d "2025-11-03 16:45:00" documents/notes.md
sudo touch -d "2025-11-04 10:15:00" projects/web-app/src/main.js
sudo touch -d "2025-11-05 11:20:00" projects/web-app/src/style.css
sudo touch -d "2025-11-06 13:10:00" projects/README.md
sudo touch -d "2025-11-07 08:30:00" downloads/data.csv
sudo touch -d "2025-10-30 17:00:00" downloads/package.tar

# Create a symlink for learning
sudo ln -s documents/welcome.txt welcome-link

# Set proper permissions
sudo chmod 755 "$PRACTICE_DIR"
sudo chmod -R 644 "$PRACTICE_DIR"/*
sudo chmod -R 755 "$PRACTICE_DIR"/*/

# Create some example files in home directory for initial exercises
cd "$HOME"
echo "This is in your home directory" > home-file.txt
mkdir -p demo-folder
echo "Content in demo folder" > demo-folder/demo-file.txt

# Log the setup for verification
echo "Practice directory structure:" >> /var/log/killercoda
find "$PRACTICE_DIR" -type f -exec ls -la {} \; >> /var/log/killercoda
echo "" >> /var/log/killercoda
echo "Home directory contents:" >> /var/log/killercoda  
ls -la "$HOME" >> /var/log/killercoda

echo "Environment setup completed successfully!" >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done