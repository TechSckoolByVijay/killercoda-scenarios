#!/bin/bash
set -x # to test stderr output in /var/log/killercoda

echo "Setting up Search Ninja training environment..." # to test stdout output in /var/log/killercoda

# Create ninja training workspace
mkdir -p $HOME/ninja-dojo

# Create a comprehensive server log for search practice
cat > $HOME/ninja-dojo/server.log << 'EOF'
[2025-01-06 08:00:01] INFO: Server initialization started
[2025-01-06 08:00:02] INFO: Loading configuration from /etc/app/config.yaml
[2025-01-06 08:00:03] INFO: Database connection pool initialized
[2025-01-06 08:00:04] INFO: Redis cache connection established
[2025-01-06 08:00:05] INFO: HTTP server listening on port 8080
[2025-01-06 08:00:06] INFO: HTTPS server listening on port 8443
[2025-01-06 08:00:07] INFO: Server startup completed successfully
[2025-01-06 08:15:23] INFO: User registration: alice@example.com
[2025-01-06 08:16:45] INFO: User login successful: bob@company.com
[2025-01-06 08:17:12] INFO: User login successful: charlie@website.org
[2025-01-06 08:18:33] WARN: High CPU usage detected: 87%
[2025-01-06 08:19:01] INFO: Scaling up server instances
[2025-01-06 08:19:45] WARN: Memory usage above threshold: 91%
[2025-01-06 08:20:12] ERROR: Database connection timeout for user session
[2025-01-06 08:20:13] INFO: Attempting database reconnection
[2025-01-06 08:20:14] INFO: Database connection restored
[2025-01-06 08:21:33] ERROR: Failed authentication attempt from IP 192.168.1.100
[2025-01-06 08:22:01] ERROR: Failed authentication attempt from IP 192.168.1.100
[2025-01-06 08:22:15] WARN: Multiple failed login attempts detected
[2025-01-06 08:22:16] INFO: IP 192.168.1.100 blocked for 1 hour
[2025-01-06 08:25:44] INFO: User logout: alice@example.com
[2025-01-06 08:26:12] INFO: User logout: bob@company.com
[2025-01-06 08:30:00] INFO: Scheduled backup process started
[2025-01-06 08:31:22] INFO: Database backup completed: 2.3GB
[2025-01-06 08:32:45] INFO: Log rotation completed
[2025-01-06 08:35:12] INFO: System health check: All services operational
[2025-01-06 08:40:33] WARN: Disk usage above 80%: /var/log partition
[2025-01-06 08:41:01] INFO: Log cleanup initiated
[2025-01-06 08:42:15] INFO: Freed 500MB disk space
[2025-01-06 08:45:00] INFO: Hourly metrics collection completed
[2025-01-06 08:50:22] ERROR: API rate limit exceeded for client 192.168.1.200
[2025-01-06 08:51:05] INFO: Rate limiting rules updated
[2025-01-06 08:55:33] INFO: Cache refresh completed
[2025-01-06 09:00:01] INFO: Server operational for 1 hour, all systems stable
EOF

# Create an application configuration file
cat > $HOME/ninja-dojo/app.config << 'EOF'
# Application Configuration
server.name=WebApp-Production
server.port=8080
server.ssl.port=8443
server.ssl.enabled=true

# Database Configuration  
database.host=prod-db.company.com
database.port=5432
database.name=webapp_production
database.user=app_user
database.password=encrypted_password
database.pool.size=50

# Cache Configuration
cache.type=redis
cache.host=redis-cluster.company.com
cache.port=6379
cache.timeout=30000

# Logging Configuration
logging.level=INFO
logging.file=/var/log/webapp/app.log
logging.rotation=daily
logging.max.size=100MB

# Security Configuration
security.jwt.secret=super_secret_key
security.session.timeout=3600
security.rate.limit=1000
security.cors.enabled=true

# Feature Flags
features.new_ui=true
features.beta_api=false
features.analytics=true
EOF

# Create a user data file
cat > $HOME/ninja-dojo/users.txt << 'EOF'
alice@example.com,Alice Smith,Premium,2024-12-15
bob@company.com,Bob Johnson,Standard,2024-11-20
charlie@website.org,Charlie Brown,Premium,2025-01-01
diana@email.net,Diana Prince,Standard,2024-10-05
eve@domain.com,Eve Wilson,Premium,2024-12-01
frank@site.org,Frank Miller,Standard,2024-09-15
grace@mail.com,Grace Lee,Premium,2025-01-10
henry@web.net,Henry Davis,Standard,2024-08-20
EOF

# Create a system processes file for pipe practice
cat > $HOME/ninja-dojo/processes.txt << 'EOF'
root      1234  0.1  0.5   4532  2048  ?    S    08:00   0:01 systemd
root      1235  0.0  0.2   2344  1024  ?    S    08:00   0:00 kthreadd
nginx     1456  0.2  1.2   8765  4321  ?    S    08:01   0:02 nginx: master
nginx     1457  0.1  0.8   6543  3210  ?    S    08:01   0:01 nginx: worker
mysql     1678  0.5  2.1  12345  8765  ?    S    08:01   0:05 mysqld
redis     1789  0.1  0.6   5432  2876  ?    S    08:01   0:01 redis-server
app       1890  0.3  1.5   9876  6543  ?    S    08:02   0:03 webapp-server
app       1891  0.2  1.0   7654  4321  ?    S    08:02   0:02 webapp-worker
root      1999  0.0  0.1   1234   567  ?    S    08:03   0:00 cron
EOF

echo "Search ninja training environment setup completed!" >> /var/log/killercoda
ls -la $HOME/ninja-dojo >> /var/log/killercoda
echo "setup_complete" > /tmp/background_setup_done