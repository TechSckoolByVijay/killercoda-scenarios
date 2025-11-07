#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up File Operations workshop environment..." # to test stdout output in /var/log/killercoda

# Create the workshop directory that the scenario expects
mkdir -p $HOME/workshop/{backups,documents,logs,temp,archives}

# Create sample files for copy practice
echo "This is important configuration data" > $HOME/workshop/important.txt
echo "Application configuration settings" > $HOME/workshop/config.conf
echo "Application log entries for testing" > $HOME/workshop/app.log
echo "Sample data for processing" > $HOME/workshop/data.txt

# Create projects directory structure
mkdir -p $HOME/workshop/projects/{frontend,backend,scripts}
mkdir -p $HOME/workshop/projects/frontend/{src,assets,components}
mkdir -p $HOME/workshop/projects/backend/{api,database,utils}

# Create sample files in projects
echo "Frontend main application" > $HOME/workshop/projects/frontend/src/app.js
echo "API routes configuration" > $HOME/workshop/projects/backend/api/routes.js
echo "Database connection script" > $HOME/workshop/projects/backend/database/connect.js

# Create temporary files for practice
echo "Temporary data 1" > $HOME/workshop/temp.txt
echo "Old configuration backup" > $HOME/workshop/old-name.txt
echo "CSV data sample" > $HOME/workshop/data.csv

# Create log files for moving practice
echo "2025-11-06 10:00:00 INFO Application started" > $HOME/workshop/system.log
echo "2025-11-06 10:01:00 INFO User login successful" > $HOME/workshop/access.log
echo "2025-11-06 10:02:00 WARN Low disk space" > $HOME/workshop/warning.log

# Create script files for organization practice
echo "#!/bin/bash" > $HOME/workshop/backup.sh
echo "echo 'Backup script'" >> $HOME/workshop/backup.sh
echo "#!/bin/bash" > $HOME/workshop/deploy.sh
echo "echo 'Deploy script'" >> $HOME/workshop/deploy.sh

# Create config files for organization
echo "port=8080" > $HOME/workshop/app.conf
echo "debug=true" > $HOME/workshop/dev.conf

# Create temporary files for deletion practice
mkdir -p $HOME/workshop/temp-files
echo "Unwanted file 1" > $HOME/workshop/temp-files/old.txt
echo "Test file for deletion" > $HOME/workshop/temp-files/test.txt
echo "Temporary file 1" > $HOME/workshop/temp-files/file1.tmp
echo "Temporary file 2" > $HOME/workshop/temp-files/file2.tmp
echo "Temporary file 3" > $HOME/workshop/temp-files/file3.tmp

# Create empty directory for rmdir practice
mkdir -p $HOME/workshop/empty-folder

# Make sure everything is in place
cd $HOME/workshop

echo "File operations workshop environment setup completed!" >> /var/log/killercoda
ls -la $HOME/workshop >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done