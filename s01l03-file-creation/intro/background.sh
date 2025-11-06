#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up File Creation & Viewing workshop environment..." # to test stdout output in /var/log/killercoda

# Create a workspace for the workshop
mkdir -p $HOME/workshop

# Create sample files for viewing practice
cat > $HOME/workshop/server.log << 'EOF'
[2025-01-01 09:00:01] INFO: Server starting up
[2025-01-01 09:00:02] INFO: Database connection established
[2025-01-01 09:00:03] INFO: Loading configuration files
[2025-01-01 09:00:04] INFO: Starting HTTP server on port 8080
[2025-01-01 09:00:05] INFO: Server ready to accept connections
[2025-01-01 09:15:23] INFO: New user registration: john@example.com
[2025-01-01 09:16:45] INFO: User login successful: jane@example.com
[2025-01-01 09:18:12] WARN: High memory usage detected: 85%
[2025-01-01 09:19:33] ERROR: Database connection timeout
[2025-01-01 09:19:34] INFO: Attempting database reconnection
[2025-01-01 09:19:35] INFO: Database connection restored
[2025-01-01 09:25:44] INFO: User logout: jane@example.com
[2025-01-01 09:30:12] INFO: System cleanup completed
[2025-01-01 09:45:22] INFO: Backup process started
[2025-01-01 09:46:33] INFO: Backup completed successfully
[2025-01-01 10:00:00] INFO: Hourly health check: All systems operational
EOF

# Create a configuration file
cat > $HOME/workshop/app.config << 'EOF'
# Application Configuration File
server.port=8080
server.host=localhost
database.url=localhost:5432
database.name=myapp
database.user=admin
logging.level=INFO
logging.file=/var/log/app.log
cache.enabled=true
cache.size=1024MB
security.encryption=AES256
EOF

# Create a large text file for scrolling practice
cat > $HOME/workshop/documentation.txt << 'EOF'
Linux Command Line Documentation
================================

Introduction
------------
The Linux command line is a powerful interface that allows users to interact
with the operating system through text commands. This documentation covers
the essential commands every Linux user should know.

Navigation Commands
------------------
pwd - Print working directory
ls - List directory contents
cd - Change directory

File Operations
---------------
touch - Create empty files
mkdir - Create directories
cp - Copy files and directories
mv - Move/rename files and directories
rm - Remove files and directories

File Viewing
------------
cat - Display entire file content
less - View file content page by page
head - Display first lines of a file
tail - Display last lines of a file

Text Processing
---------------
grep - Search for patterns in files
sed - Stream editor for filtering and transforming text
awk - Pattern scanning and processing language

System Information
------------------
ps - Display running processes
top - Display and update sorted information about running processes
df - Display filesystem disk space usage
free - Display amount of free and used memory

Network Commands
----------------
ping - Send ICMP echo requests to a host
wget - Download files from web servers
curl - Transfer data from or to a server

Archive Commands
----------------
tar - Archive files
gzip - Compress files
unzip - Extract ZIP archives

Permission Commands
-------------------
chmod - Change file permissions
chown - Change file ownership
chgrp - Change group ownership

Advanced Topics
---------------
Shell scripting allows automation of repetitive tasks
Environment variables control system behavior
Regular expressions provide powerful pattern matching
Process management enables system monitoring and control

Conclusion
----------
Mastering the Linux command line takes practice, but these fundamental
commands provide a solid foundation for system administration and
development work.
EOF

# Create a small sample text file
echo "This is a small sample file for practicing cat command." > $HOME/workshop/sample.txt

echo "File creation workshop environment setup completed!" >> /var/log/killercoda
ls -la $HOME/workshop >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done