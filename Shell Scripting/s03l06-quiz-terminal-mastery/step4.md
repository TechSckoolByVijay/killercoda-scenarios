# Quiz Part 4 — Advanced Challenges (Questions 13-14)

Final boss level! Combine everything you've learned! 🔥

---

## 📝 Question 13: Real-World Scenario - System Administration

**Scenario**: You're a system administrator who needs to:
1. Check the system logs for any error messages
2. Create a backup directory structure  
3. Document your findings

**Task**: Complete this multi-step challenge:

```bash
# Step 1: Navigate to /var/log and find files containing "error" (case-insensitive)
# Use ls to see what log files exist, then search for errors

# Step 2: Create a backup structure in /tmp/backup/logs/

# Step 3: Create a report file called findings.txt with your current location and timestamp

# Your solution:




```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

1. Use `cd /var/log && ls` to see log files, then `grep -i error *.log` or similar to search
2. Use `mkdir -p /tmp/backup/logs` for directory creation
3. Use `echo "Report generated from $(pwd) at $(date)" > findings.txt`

Combine navigation, file creation, searching, and documentation skills!

</details>

---

## 📝 Question 14: Master Challenge - Log Analysis Pipeline

**Scenario**: You're debugging a production issue and need to analyze log files efficiently.

**Task**: Create a complete log analysis workflow:

```bash
# First, create a sample application log:
cat > app.log << EOF
2024-01-01 10:00:01 INFO Application started
2024-01-01 10:00:02 INFO Database connected
2024-01-01 10:00:03 ERROR Failed to load config file
2024-01-01 10:00:04 WARN Retrying connection
2024-01-01 10:00:05 INFO Config loaded successfully
2024-01-01 10:00:06 ERROR User authentication failed
2024-01-01 10:00:07 INFO Request processed
2024-01-01 10:00:08 ERROR Database timeout
2024-01-01 10:00:09 INFO System recovered
2024-01-01 10:00:10 INFO Application healthy
EOF

# Now complete these tasks:
# 1. Count total lines in the log
# 2. Find all ERROR lines
# 3. Find all lines from the last 5 entries
# 4. Create a summary report showing: total lines, error count, and recent activity

# Your complete solution:





```{{exec}}

<details>
<summary>💡 Click for Hint</summary>

1. Use `wc -l app.log` to count lines
2. Use `grep ERROR app.log` to find errors  
3. Use `tail -5 app.log` for recent entries
4. Combine with commands like: `echo "Total lines: $(wc -l < app.log), Errors: $(grep -c ERROR app.log)"`

This tests file creation, content analysis, searching, filtering, and reporting - the complete toolkit!

</details>

---

## 🎯 Final Challenge Complete!

You've tackled real-world scenarios that combine:
- Navigation and file system exploration
- File creation and content management  
- Search and filtering techniques
- Documentation and reporting
- Command chaining and automation

Click **Check** to see your final Terminal Mastery results!

**Advanced skills demonstrated**: Complex workflows, piping, command substitution, real-world problem solving