#!/bin/bash
set -x # Enable verbose logging

echo "Setting up 'Practical Linux File Operations and Permissions' environment..."

# Create workshop directory structure
WORKSHOP_DIR="/workshop"
sudo mkdir -p "$WORKSHOP_DIR/projects/website"
sudo mkdir -p "$WORKSHOP_DIR/projects/backup"
sudo mkdir -p "$WORKSHOP_DIR/logs"
sudo mkdir -p "$WORKSHOP_DIR/configs"
sudo mkdir -p "$WORKSHOP_DIR/scripts"
sudo mkdir -p "$WORKSHOP_DIR/playground"

# Create some sample files for practice
cd "$WORKSHOP_DIR"

# Log files with realistic content
sudo bash -c 'echo "2025-11-07 10:15:23 [INFO] Server started successfully" > logs/server.log'
sudo bash -c 'echo "2025-11-07 10:16:45 [INFO] User admin logged in" >> logs/server.log'
sudo bash -c 'echo "2025-11-07 10:17:12 [WARNING] High memory usage detected" >> logs/server.log'
sudo bash -c 'echo "2025-11-07 10:18:33 [ERROR] Database connection failed" >> logs/server.log'
sudo bash -c 'echo "2025-11-07 10:19:01 [INFO] Attempting to reconnect..." >> logs/server.log'

# Config files
sudo bash -c 'cat > configs/app.conf << EOF
# Application Configuration
server_port=8080
database_host=localhost
debug_mode=true
max_connections=100
timeout=30
EOF'

# Project files
sudo bash -c 'echo "<!DOCTYPE html><html><head><title>My Website</title></head><body><h1>Welcome!</h1></body></html>" > projects/website/index.html'
sudo bash -c 'echo "body { font-family: Arial; margin: 20px; }" > projects/website/style.css'

# Sample script (not executable initially)
sudo bash -c 'cat > scripts/backup.sh << EOF
#!/bin/bash
echo "Starting backup process..."
cp -r /workshop/projects/website /workshop/projects/backup/
echo "Backup completed!"
EOF'

# Some text files for manipulation practice
sudo bash -c 'echo "This is a sample document for practice." > playground/sample.txt'
sudo bash -c 'echo "Line 1: Introduction" > playground/readme.txt'
sudo bash -c 'echo "Line 2: Getting Started" >> playground/readme.txt'
sudo bash -c 'echo "Line 3: Advanced Topics" >> playground/readme.txt'

# Create some files with different permissions for demonstration
sudo bash -c 'echo "This file has default permissions" > playground/normal.txt'
sudo bash -c 'echo "echo \"Hello from executable script!\"" > playground/hello.sh'

# Set different timestamps for realistic scenarios
sudo touch -d "2025-11-01 09:00:00" logs/server.log
sudo touch -d "2025-11-02 14:30:00" configs/app.conf  
sudo touch -d "2025-11-03 16:45:00" projects/website/index.html
sudo touch -d "2025-11-04 10:15:00" scripts/backup.sh

# Set appropriate permissions for the workshop directory
sudo chmod 755 "$WORKSHOP_DIR"
sudo chmod -R 644 "$WORKSHOP_DIR"/*
sudo chmod -R 755 "$WORKSHOP_DIR"/*/

# Make scripts directory writable for permission exercises
sudo chmod 775 "$WORKSHOP_DIR/scripts"
sudo chmod 644 "$WORKSHOP_DIR/scripts/backup.sh"

# Create a simple file in home directory for initial exercises
cd "$HOME"
echo "Welcome to the file operations workshop!" > welcome.txt
echo "Today you'll learn essential file handling skills." >> welcome.txt

# Log setup completion
echo "Workshop directory structure:" >> /var/log/killercoda
find "$WORKSHOP_DIR" -type f -exec ls -la {} \; >> /var/log/killercoda
echo "" >> /var/log/killercoda
echo "Home directory contents:" >> /var/log/killercoda  
ls -la "$HOME" >> /var/log/killercoda

echo "File operations workshop environment setup completed!" >> /var/log/killercoda
echo "workshop_setup_complete" > /tmp/background_setup_done