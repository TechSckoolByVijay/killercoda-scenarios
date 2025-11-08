#!/bin/bash
set -x # Enable verbose logging

echo "Setting up 'Pipes, Grep, and Sed Smart Workflows' environment..."

# Create workspace directory structure
WORKSPACE_DIR="/workspace"
sudo mkdir -p "$WORKSPACE_DIR/logs"
sudo mkdir -p "$WORKSPACE_DIR/data"

cd "$WORKSPACE_DIR"

# Create realistic log files
sudo bash -c 'cat > logs/app.log << EOF
2025-11-08 09:15:23 [INFO] Application startup completed successfully
2025-11-08 09:15:45 [INFO] Database connection established
2025-11-08 09:16:12 [WARNING] High memory usage detected: 85%
2025-11-08 09:16:33 [ERROR] Failed to connect to cache server
2025-11-08 09:16:34 [INFO] Retrying cache connection...
2025-11-08 09:16:55 [ERROR] Authentication timeout for user admin
2025-11-08 09:17:12 [WARNING] Slow query detected: 2.5 seconds
2025-11-08 09:17:33 [INFO] Cache connection restored
2025-11-08 09:18:01 [ERROR] Payment processing failed for transaction 12345
2025-11-08 09:18:15 [WARNING] High CPU usage: 92%
2025-11-08 09:18:45 [ERROR] Database connection lost
2025-11-08 09:19:02 [INFO] Attempting database reconnection
2025-11-08 09:19:23 [ERROR] Failed to send notification email
2025-11-08 09:19:44 [INFO] Email service restored
2025-11-08 09:20:01 [WARNING] Disk space low: 90% full
EOF'

sudo bash -c 'cat > logs/access.log << EOF
192.168.1.101 GET /api/users 200 0.045
10.0.0.25 POST /api/auth 401 0.023
192.168.1.101 GET /api/products 200 0.067
203.45.67.89 GET /admin 403 0.012
10.0.0.25 POST /api/auth 200 0.156
192.168.1.101 GET /api/cart 200 0.034
203.45.67.89 GET /login 200 0.089
10.0.0.25 GET /api/orders 200 0.078
192.168.1.101 POST /api/checkout 500 0.234
203.45.67.89 POST /api/register 201 0.145
10.0.0.25 GET /api/profile 200 0.023
192.168.1.101 GET /api/users 200 0.041
203.45.67.89 GET /admin 403 0.015
10.0.0.25 DELETE /api/session 200 0.034
192.168.1.101 GET /api/products 200 0.052
EOF'

sudo bash -c 'cat > logs/system.log << EOF
2025-11-08 09:10:15 kernel: CPU temperature normal
2025-11-08 09:11:23 sshd: Authentication timeout for 203.45.67.89
2025-11-08 09:12:45 systemd: Service mysql started
2025-11-08 09:13:12 kernel: Memory usage within limits
2025-11-08 09:14:33 sshd: Failed login attempt from 198.51.100.42
2025-11-08 09:15:01 cron: Job completed successfully
2025-11-08 09:16:22 systemd: Service nginx reloaded
2025-11-08 09:17:45 sshd: User admin logged in from 192.168.1.101
2025-11-08 09:18:33 kernel: Disk I/O timeout detected
2025-11-08 09:19:15 systemd: Service redis started
2025-11-08 09:20:02 sshd: Connection denied for user guest
2025-11-08 09:21:34 cron: Backup job initiated
2025-11-08 09:22:45 kernel: Network interface eth0 up
2025-11-08 09:23:12 systemd: Service postgresql restarted
EOF'

# Create structured data files
sudo bash -c 'cat > data/users.txt << EOF
admin:John Doe:IT:2020-01-15:active
manager:Jane Smith:Sales:2019-03-22:active
developer:Mike Johnson:IT:2021-06-10:active
analyst:Sarah Wilson:Finance:2020-08-05:inactive
support:Tom Brown:Support:2022-01-30:active
intern:Lisa Davis:IT:2023-05-15:active
director:Bob Taylor:Management:2018-12-01:active
EOF'

sudo bash -c 'cat > data/services.txt << EOF
nginx,web-server,running,80
mysql,database,running,3306
redis,cache,stopped,6379
postgresql,database,running,5432
apache,web-server,stopped,8080
mongodb,database,running,27017
elasticsearch,search,running,9200
EOF'

# Create some additional test data
sudo bash -c 'cat > data/sales.txt << EOF
2025-01,North,15000,Electronics
2025-01,South,12000,Clothing
2025-01,East,18000,Electronics
2025-02,North,16500,Electronics
2025-02,South,14000,Clothing
2025-02,East,19500,Electronics
2025-03,North,17000,Electronics
2025-03,South,13500,Clothing
2025-03,East,20000,Electronics
EOF'

# Set proper permissions
sudo chmod -R 755 "$WORKSPACE_DIR"
sudo chmod -R 644 "$WORKSPACE_DIR"/*

# Make sure user can access everything
sudo chown -R root:root "$WORKSPACE_DIR"
sudo chmod -R o+r "$WORKSPACE_DIR"

# Create a simple validation file
echo "workspace_ready" > "$WORKSPACE_DIR/.setup_complete"

# Log setup completion
echo "Workspace directory structure:" >> /var/log/killercoda
find "$WORKSPACE_DIR" -type f -exec ls -la {} \; >> /var/log/killercoda
echo "" >> /var/log/killercoda

echo "Text processing workshop environment setup completed!" >> /var/log/killercoda
echo "pipeline_setup_complete" > /tmp/background_setup_done