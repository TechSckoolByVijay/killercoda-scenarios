# Step 9 — Real-World Pipeline Challenge 🚀

Time to combine everything! Build complex pipelines that solve real system administration and data analysis problems.

## Challenge 1: Security Analysis Pipeline

**Goal:** Identify the top 5 IP addresses with failed login attempts.

**Your mission:** Build a pipeline that finds failed logins, extracts IPs, counts them, and shows the top offenders.

```bash
grep -i "failed" logs/system.log | grep -o '\b[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\b' | sort | uniq -c | sort -nr | head -5
```{{exec}}

**What this does:**
1. `grep -i "failed"` - Find all failed login attempts
2. `grep -o '...'` - Extract only IP addresses (regex pattern)
3. `sort` - Sort IP addresses for grouping
4. `uniq -c` - Count occurrences of each IP
5. `sort -nr` - Sort by count (highest first)
6. `head -5` - Show top 5 offenders

---

## Challenge 2: Service Health Dashboard

**Goal:** Create a real-time service status report showing running vs stopped services.

```bash
echo "=== SERVICE STATUS REPORT ===" && \
grep ":" data/services.txt | \
sed 's/^/STATUS: /' | \
grep -E "(running|stopped)" | \
cut -d':' -f2,3 | \
sort | \
uniq -c | \
sed 's/^ *//' | \
sed 's/^/COUNT: /'
```{{exec}}

**Pipeline breakdown:**
1. Print header with `echo`
2. Find service lines with `:`
3. Add STATUS prefix with `sed`
4. Filter for running/stopped only
5. Extract service name and status with `cut`
6. Sort for grouping
7. Count each status type
8. Clean up spacing
9. Add COUNT prefix for clarity

---

## Challenge 3: Log Analytics Pipeline

**Goal:** Generate error report with timestamps, counts, and severity levels.

```bash
echo "=== ERROR ANALYSIS REPORT ===" && \
grep -E "(ERROR|WARN)" logs/app.log | \
sed 's/\([0-9]\{4\}-[0-9]\{2\}-[0-9]\{2\}\)/[\1]/' | \
cut -d' ' -f1,4 | \
sort | \
uniq -c | \
sort -nr | \
head -10 | \
sed 's/^ */FREQUENCY: /' && \
echo "=== TOTAL ERROR COUNT ===" && \
grep -c "ERROR" logs/app.log
```{{exec}}

**Advanced pipeline flow:**
1. Generate report header
2. Find ERROR and WARN entries
3. Format dates with brackets
4. Extract date and severity level
5. Sort for frequency analysis
6. Count unique combinations
7. Sort by frequency (highest first)
8. Show top 10 patterns
9. Add frequency labels
10. Show total error count

---

## 🎯 Your Ultimate Challenge: User Activity Analysis

**Build your own pipeline** to analyze user activity patterns from multiple data sources:

**Challenge A - Active User Analysis:**
```bash
cut -d':' -f1,5 data/users.txt | grep active | cut -d':' -f1 | wc -l
```{{exec}}

**Challenge B - Department Statistics:**
```bash
cut -d':' -f3 data/users.txt | grep -v "^$" | sort | uniq -c | sort -nr
```{{exec}}

**Challenge C - Phone Number Cleanup:**
```bash
grep "phone" data/users.txt | sed 's/.*phone:\([0-9-]*\).*/\1/' | sed 's/-//g' | sort | uniq
```{{exec}}

**Challenge D - Complex Log Pattern:**
```bash
grep "ERROR\|WARN" logs/app.log | cut -d' ' -f1,4 | sed 's/-//g' | sort | uniq -c | sort -nr | head -5
```{{exec}}

---

## 🏆 Master Challenge: Complete System Report

**The ultimate test** - create a comprehensive system analysis pipeline:

```bash
echo "=== COMPREHENSIVE SYSTEM ANALYSIS ===" && \
echo "Date: $(date)" && \
echo "" && \
echo "1. TOTAL LOG ENTRIES:" && \
wc -l logs/*.log | tail -1 && \
echo "" && \
echo "2. ERROR FREQUENCY:" && \
grep -h "ERROR" logs/*.log | wc -l && \
echo "" && \
echo "3. TOP ERROR TYPES:" && \
grep -h "ERROR" logs/*.log | sed 's/.*ERROR: \([^,]*\).*/\1/' | sort | uniq -c | sort -nr | head -3 && \
echo "" && \
echo "4. ACTIVE SERVICES:" && \
grep "running" data/services.txt | wc -l && \
echo "" && \
echo "5. USER STATUS:" && \
cut -d':' -f5 data/users.txt | sort | uniq -c | grep -v "^.*$" && \
echo "" && \
echo "=== ANALYSIS COMPLETE ==="
```{{exec}}

---

## 💡 Pipeline Mastery Reference

### 🔗 **Pipeline Construction Patterns:**
```bash
# Security monitoring
grep "failed" /var/log/auth.log | awk '{print $11}' | sort | uniq -c | sort -nr

# Performance analysis
grep "slow" /var/log/app.log | cut -d' ' -f1,8 | sort | uniq -c

# Data extraction and formatting
cat data.csv | cut -d',' -f2,4 | grep -v "^$" | sort | uniq

# Real-time monitoring
tail -f /var/log/syslog | grep "ERROR" | sed 's/^/[ALERT] /'
```

### 🚀 **Advanced Workflow Examples:**
```bash
# Website traffic analysis
cut -d' ' -f1 access.log | sort | uniq -c | sort -nr | head -10

# Configuration validation
grep -v "^#" config.txt | grep -v "^$" | sort | uniq

# System health check
ps aux | grep -v grep | grep apache | wc -l

# Log rotation analysis
ls -la /var/log/*.log | awk '{sum+=$5} END {print "Total size:", sum}'
```

### 🛡️ **Production Pipeline Safety:**
```bash
# Always test with head/tail first
command | head -5

# Use intermediate files for complex operations
command > temp.txt && process temp.txt && rm temp.txt

# Add error checking
command || echo "Pipeline failed at step X"

# Document your pipelines
# This pipeline analyzes failed logins
grep "failed" auth.log | cut -d' ' -f11 | sort | uniq -c
```

### ✅ Master Achievement Unlocked!

**🎉 Congratulations!** You've mastered:
- **Pipeline thinking** - Connecting commands with `|`
- **Text filtering** - `grep` with patterns and flags
- **Data extraction** - `cut` for precise column selection  
- **Frequency analysis** - `sort | uniq -c | sort -nr` patterns
- **Counting** - `wc` for measurements
- **Text transformation** - `sed` for replacements
- **Complex workflows** - Multi-step real-world pipelines

**You're now a Linux text processing ninja!** 🥷

These skills will serve you in system administration, data analysis, log monitoring, and automation scripts. Keep practicing with real data!

**Ready to celebrate your achievement?** Click **Next** to see your completion summary!