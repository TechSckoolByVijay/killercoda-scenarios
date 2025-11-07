#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up Navigation Mastery learning environment..." # to test stdout output in /var/log/killercoda

# Create a rich directory structure for navigation practice
mkdir -p $HOME/workspace/{projects,documents,downloads}
mkdir -p $HOME/workspace/projects/{web-app,mobile-app,scripts}
mkdir -p $HOME/workspace/documents/{reports,presentations,notes}
mkdir -p $HOME/workspace/downloads/{software,images,temp}

# Create some files with different sizes for ls practice
echo "Welcome to the main workspace!" > $HOME/workspace/README.md
echo "This is a web application project" > $HOME/workspace/projects/web-app/index.html
echo "Mobile app development notes" > $HOME/workspace/projects/mobile-app/README.md
echo "Useful automation scripts" > $HOME/workspace/projects/scripts/automation.sh

# Create files with different timestamps
touch -d "2025-01-01 09:00:00" $HOME/workspace/documents/reports/quarterly-report.txt
touch -d "2025-01-02 14:30:00" $HOME/workspace/documents/presentations/slides.pptx
touch -d "2025-01-03 16:45:00" $HOME/workspace/documents/notes/meeting-notes.txt

# Create hidden files (starting with dots)
echo "Hidden configuration file" > $HOME/workspace/.config
echo "Hidden environment variables" > $HOME/workspace/.env

# Create files of different sizes for human-readable demo
dd if=/dev/zero of=$HOME/workspace/downloads/software/bigfile.zip bs=1024 count=2048 2>/dev/null
dd if=/dev/zero of=$HOME/workspace/downloads/images/photo.jpg bs=1024 count=512 2>/dev/null
echo "Small text file" > $HOME/workspace/downloads/temp/small.txt

# Create a system-like structure for absolute path practice
mkdir -p /tmp/demo/{bin,etc,var/log}
echo "Demo binary file" > /tmp/demo/bin/demo-app
echo "Demo configuration" > /tmp/demo/etc/config.conf
echo "Demo log entries" > /tmp/demo/var/log/app.log

echo "Navigation environment setup completed!" >> /var/log/killercoda
ls -la $HOME/workspace >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done