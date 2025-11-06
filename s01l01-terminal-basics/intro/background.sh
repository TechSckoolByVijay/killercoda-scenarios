#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up Terminal Basics learning environment..." # to test stdout output in /var/log/killercoda

# Create a welcoming directory structure for the user to explore
mkdir -p $HOME/welcome
mkdir -p $HOME/documents
mkdir -p $HOME/projects

# Create some sample files to make the environment feel lived-in
echo "Welcome to Linux!" > $HOME/welcome/greeting.txt
echo "This is your documents folder" > $HOME/documents/readme.txt
echo "Future projects go here" > $HOME/projects/placeholder.txt

# Create a demonstration directory structure they'll explore later
mkdir -p $HOME/demo/{folder1,folder2,folder3}
echo "Content in folder 1" > $HOME/demo/folder1/file1.txt
echo "Content in folder 2" > $HOME/demo/folder2/file2.txt

echo "Terminal basics environment setup completed!" >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done