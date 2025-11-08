# Step 7 — wc for Counting Everything 🔢

Master `wc` (word count) - your statistical analysis tool for measuring file sizes, line counts, and data volumes!

## Count Lines with -l

Count total log entries:

```bash
wc -l logs/app.log
```{{exec}}

Count error entries specifically:
```bash
grep "ERROR" logs/app.log | wc -l
```{{exec}}

This is perfect for monitoring error rates and system health!

---

## Count Words with -w

See how many words are in a file:

```bash
wc -w data/users.txt
```{{exec}}

Count words in error messages:
```bash
grep "ERROR" logs/app.log | wc -w
```{{exec}}

---

## Count Characters with -c

Measure file sizes in characters:

```bash
wc -c data/services.txt
```{{exec}}

Check the size of filtered data:
```bash
grep "running" data/services.txt | wc -c
```{{exec}}

---

## All Statistics at Once

Get complete file statistics:

```bash
wc logs/system.log
```{{exec}}

This shows: **lines words characters filename**

---

## 🎯 Your Turn: System Health Analysis

**Challenge:** Count warning entries across all logs and compare with errors.

**Try this now - count total WARNING entries:**
```bash
grep -r -i "WARN" logs/ | wc -l
```{{exec}}

**Count total ERROR entries:**
```bash
grep -r -i "ERROR" logs/ | wc -l
```{{exec}}

**Count authentication failures:**
```bash
grep -r -i "failed" logs/ | wc -l
```{{exec}}

**Count active vs inactive users:**
```bash
grep "active" data/users.txt | wc -l
```{{exec}}

```bash
grep "inactive" data/users.txt | wc -l
```{{exec}}

**If it worked, you should see:** Different numbers showing the count for each category.

**Validation check:** Your counts should be > 0:
```bash
echo "Total log entries:" && wc -l logs/*.log
```{{exec}}

You should see line counts for each log file!

---

## 💡 wc Statistics Reference

### 📊 **Common Patterns:**
| Command | Purpose | Example |
|---------|---------|---------|
| `wc -l file` | **Count lines** | `wc -l access.log` |
| `command \| wc -l` | **Count filtered results** | `grep ERROR \| wc -l` |
| `wc -w file` | **Count words** | `wc -w config.txt` |
| `wc -c file` | **Count characters** | `wc -c data.csv` |
| `wc file` | **All statistics** | Shows lines, words, chars |

### 🚀 **Real-World Examples:**
```bash
# Monitor error rate trends
grep ERROR logs/app-$(date +%Y%m%d).log | wc -l

# Check configuration file size
wc -c /etc/nginx/nginx.conf

# Count unique IP addresses
cut -d ' ' -f 1 access.log | sort | uniq | wc -l

# Measure log growth
wc -l /var/log/syslog
```

### 📈 **System Monitoring:**
```bash
# Daily error count
grep "$(date +%Y-%m-%d)" logs/app.log | grep ERROR | wc -l

# User activity levels
cut -d ':' -f 5 data/users.txt | grep active | wc -l

# Configuration changes
diff old.conf new.conf | wc -l
```

### ✅ Key Takeaway
`wc` gives you instant statistics - essential for monitoring, analysis, and understanding data volumes!

**Ready to transform text on the fly?** Click **Next** to master sed replacements!