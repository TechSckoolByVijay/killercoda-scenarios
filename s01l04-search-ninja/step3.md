# Step 3 — Master Pipes & Filtering ⚡

## Filter Process Lists

```bash
ps aux | grep "python"
```{{exec}}

```bash
ps aux | grep -v "grep"
```{{exec}}

**System power!** Filter running processes instantly

---

## Chain Multiple Searches

```bash
grep "ERROR" server.log | grep "database"
```{{exec}}

```bash
grep -v "INFO" server.log | grep "WARN"
```{{exec}}

**Refine results** by chaining grep commands

---

## Live Log Monitoring

```bash
tail -f server.log | grep --color=always "ERROR"
```{{exec}}

**Press Ctrl+C to stop**

**Real-time monitoring!** Watch for patterns as they happen

---

## Statistics & Analysis

```bash
grep "ERROR" *.log | wc -l
```{{exec}}

```bash
grep -c "INFO" *.log
```{{exec}}

**Data analysis** made easy with counting

---

## Advanced Combinations

```bash
cat users.txt | grep "@" | head -3
```{{exec}}

```bash
ls -la | grep "\.log" | wc -l
```{{exec}}

💡 **Master technique:** Pipe any command output through grep for instant filtering!

**🎉 You're now a grep master ninja!**

Let's look at our processes file and filter it:

```bash
cat processes.txt
```{{exec}}

Now let's find only the **nginx processes**:

```bash
cat processes.txt | grep nginx
```{{exec}}

🎯 **Pipeline power!** We took the file content and filtered it through grep!

---

## 2. System Command Filtering

This is **incredibly useful** with live system commands. Let's simulate some:

**Find specific processes by name:**
```bash
cat processes.txt | grep -i mysql
```{{exec}}

**Find processes using lots of memory (simulate with our data):**
```bash
cat processes.txt | grep -v "0.0"
```{{exec}}

**Count running processes by user:**
```bash
cat processes.txt | grep -c "nginx"
```{{exec}}

---

## 3. Multi-Stage Filtering

You can **chain multiple greps** for powerful filtering:

```bash
cat server.log | grep "User" | grep "login"
```{{exec}}

This finds lines with **both** "User" **and** "login"!

**Another example — find errors but exclude database ones:**
```bash
cat server.log | grep "ERROR" | grep -v "Database"
```{{exec}}

🥷 **Advanced ninja technique!** Multiple filters in one command!

---

## 4. Real-World Log Analysis

Let's do some **professional log analysis**:

**Find all authentication-related events:**
```bash
cat server.log | grep -i "authentication\|login\|logout"
```{{exec}}

**Find performance issues:**
```bash
cat server.log | grep -E "CPU|Memory|timeout"
```{{exec}}

**Get security-related events with line numbers:**
```bash
cat server.log | grep -n "IP\|blocked\|failed"
```{{exec}}

---

## 5. Configuration Analysis Pipeline

Let's analyze configuration files using pipes:

**Find all network-related settings:**
```bash
cat app.config | grep -i "port\|host\|server"
```{{exec}}

**Find enabled features (exclude comments):**
```bash
cat app.config | grep -v "^#" | grep "true"
```{{exec}}

**Count configuration sections:**
```bash
cat app.config | grep -c "Configuration"
```{{exec}}

---

## 6. User Data Analysis

Let's analyze user data with powerful pipelines:

**Find premium users from specific domains:**
```bash
cat users.txt | grep "Premium" | grep ".com"
```{{exec}}

**Find recent signups (2025):**
```bash
cat users.txt | grep "2025"
```{{exec}}

**Exclude test users and count real ones:**
```bash
cat users.txt | grep -v "test\|demo" | grep -c "@"
```{{exec}}

---

## 7. Advanced Pipeline Combinations

Here are some **professional-grade** command combinations:

**Monitor only errors and warnings:**
```bash
cat server.log | grep -E "ERROR|WARN" | grep -n ""
```{{exec}}

**Find unique error types:**
```bash
cat server.log | grep "ERROR" | grep -v "Database"
```{{exec}}

**Security audit pipeline:**
```bash
cat server.log | grep -i "failed\|blocked\|attack" | grep -n ""
```{{exec}}

---

## 8. The Power of Live Command Filtering

In real systems, you'd use these patterns with **live commands**:

```bash
# These are examples - they would work on real systems:
# ps aux | grep nginx              # Find nginx processes
# df -h | grep "disk"              # Check disk usage
# netstat -an | grep ":80"         # Find web server connections
# tail -f /var/log/app.log | grep ERROR  # Monitor errors in real-time
```

**Let's simulate with our data:**
```bash
cat processes.txt | grep -v "root" | grep -n ""
```{{exec}}

---

## 🎯 Pipeline Mastery Summary

### Basic Pipeline Pattern
- `command | grep "pattern"` → Filter command output
- `cat file | grep "text"` → Filter file content
- `command | grep -v "exclude"` → Remove unwanted lines

### Advanced Combinations
- `cmd | grep "term1" | grep "term2"` → Multiple filters
- `cmd | grep -E "term1|term2"` → OR search
- `cmd | grep pattern | grep -c ""` → Filter then count

### Professional Workflows
- **Log monitoring:** `tail -f log | grep ERROR`
- **Process analysis:** `ps aux | grep apache`
- **Network debugging:** `netstat | grep :80`
- **System health:** `df -h | grep disk`

## 💡 Real-World Impact

### System Administration
```bash
# Monitor failed logins in real-time
tail -f /var/log/auth.log | grep "Failed password"

# Find high-memory processes
ps aux | grep -v "0.0" | head -10

# Check specific service status
systemctl status | grep nginx
```

### Development & Debugging
```bash
# Monitor application errors
tail -f app.log | grep -E "ERROR|FATAL"

# Find memory leaks in logs
cat debug.log | grep "memory" | grep -v "normal"

# Check API response codes
cat access.log | grep " 500 " | head -20
```

## 🏆 Ninja Master Achievement!

You've now mastered:
✅ **Basic grep searching** — Find any text in any file  
✅ **Advanced grep options** — Case-insensitive, line numbers, counting, inversion  
✅ **Pipeline filtering** — Combine grep with other commands for ultimate power

## 🔥 Graduate Challenge

Try these **ninja master challenges**:

```bash
cat server.log | grep -E "ERROR|WARN" | grep -v "Database" | grep -n ""
```{{exec}}

```bash
cat users.txt | grep "Premium" | grep -c "2024"
```{{exec}}

**Congratulations!** You're now a **certified Search Ninja** with grep mastery! Click **Next** to celebrate your achievement!