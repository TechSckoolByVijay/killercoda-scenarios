#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up File Operations workshop environment..." # to test stdout output in /var/log/killercoda

# Create workshop directory structure
mkdir -p $HOME/file-ops-lab/{projects,backups,temp,archive}

# Create sample project structure
mkdir -p $HOME/file-ops-lab/projects/{webapp,mobile-app,scripts}
mkdir -p $HOME/file-ops-lab/projects/webapp/{src,config,docs}
mkdir -p $HOME/file-ops-lab/projects/mobile-app/{android,ios,shared}

# Create sample files for copying practice
cat > $HOME/file-ops-lab/projects/webapp/src/app.js << 'EOF'
// Main application file
const express = require('express');
const app = express();

app.get('/', (req, res) => {
    res.send('Hello World!');
});

app.listen(3000, () => {
    console.log('Server running on port 3000');
});
EOF

cat > $HOME/file-ops-lab/projects/webapp/config/database.yml << 'EOF'
production:
  adapter: postgresql
  host: localhost
  database: webapp_production
  username: app_user
  password: secure_password

development:
  adapter: postgresql
  host: localhost
  database: webapp_development
  username: dev_user
  password: dev_password
EOF

cat > $HOME/file-ops-lab/projects/webapp/docs/README.md << 'EOF'
# Web Application

This is a sample web application for demonstrating file operations.

## Installation

1. Install dependencies
2. Configure database
3. Run the application

## Usage

Start the server with `node app.js`
EOF

# Create files for moving practice
echo "Configuration for production environment" > $HOME/file-ops-lab/projects/webapp/prod.config
echo "Development environment settings" > $HOME/file-ops-lab/projects/webapp/dev.config
echo "Testing configuration" > $HOME/file-ops-lab/projects/webapp/test.config

# Create temporary files for deletion practice
mkdir -p $HOME/file-ops-lab/temp/{logs,cache,uploads}
echo "Temporary log file" > $HOME/file-ops-lab/temp/logs/app.log
echo "Cache data" > $HOME/file-ops-lab/temp/cache/data.cache
echo "Uploaded file" > $HOME/file-ops-lab/temp/uploads/file.txt
echo "Old backup" > $HOME/file-ops-lab/temp/old-backup.tar.gz

# Create files for find practice with different timestamps
mkdir -p $HOME/file-ops-lab/projects/scripts
echo "Backup script" > $HOME/file-ops-lab/projects/scripts/backup.sh
echo "Deploy script" > $HOME/file-ops-lab/projects/scripts/deploy.sh
echo "Monitor script" > $HOME/file-ops-lab/projects/scripts/monitor.py

# Set different timestamps for find practice
touch -d "2025-01-01 10:00:00" $HOME/file-ops-lab/projects/scripts/backup.sh
touch -d "2025-01-02 14:30:00" $HOME/file-ops-lab/projects/scripts/deploy.sh
touch -d "2025-01-03 09:15:00" $HOME/file-ops-lab/projects/scripts/monitor.py

# Create some files in deeper directories for find practice
mkdir -p $HOME/file-ops-lab/projects/mobile-app/android/src
mkdir -p $HOME/file-ops-lab/projects/mobile-app/ios/src
echo "Android main activity" > $HOME/file-ops-lab/projects/mobile-app/android/src/MainActivity.java
echo "iOS view controller" > $HOME/file-ops-lab/projects/mobile-app/ios/src/ViewController.swift
echo "Shared utilities" > $HOME/file-ops-lab/projects/mobile-app/shared/utils.js

echo "File operations workshop environment setup completed!" >> /var/log/killercoda
ls -la $HOME/file-ops-lab >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done