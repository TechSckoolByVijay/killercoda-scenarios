# Step 2 — Advanced Search Options 🎯

Excellent work, ninja! Now let's upgrade your search powers with **advanced grep options** that professionals use daily!

## Advanced Ninja Techniques

Time to learn the **secret flags** that transform grep from good to **absolutely amazing**!

---

## 1. Case-Insensitive Search (-i)

By default, grep is case-sensitive. But what if you want to find both "Error" and "ERROR"?

```bash
grep "error" server.log
```{{exec}}

Nothing found! But watch this:

```bash
grep -i "error" server.log
```{{exec}}

🎯 **Magic!** The `-i` flag means **"ignore case"** — it finds ERROR, Error, and error!

---

## 2. Show Line Numbers (-n)

Want to know **exactly where** the matches occur? Use `-n`:

```bash
grep -n "WARN" server.log
```{{exec}}

**Perfect!** Now you see the **line number** before each match — essential for debugging!

---

## 3. Combine Flags for Maximum Power

You can combine flags for **super-powered searching**:

```bash
grep -in "database" server.log app.config
```{{exec}}

This gives you **case-insensitive search** with **line numbers** across **multiple files**!

---

## 4. Inverted Search (-v) - Show What Doesn't Match

Sometimes you want the **opposite** — lines that DON'T contain your search term:

```bash
grep -v "INFO" server.log
```{{exec}}

🎯 **Ninja filtering!** This shows only WARNING and ERROR messages — perfect for finding problems!

---

## 5. Count Matches (-c)

Want to know **how many times** something appears? Use `-c`:

```bash
grep -c "INFO" server.log
```{{exec}}

```bash
grep -c "ERROR" server.log
```{{exec}}

```bash
grep -c "WARN" server.log
```{{exec}}

**Instant statistics!** Great for quick log analysis.

---

## 6. Real-World Debugging Scenario

Let's simulate finding a security issue. Search for failed login attempts:

```bash
grep -in "failed" server.log
```{{exec}}

Now let's see how many failed attempts occurred:

```bash
grep -c "Failed authentication" server.log
```{{exec}}

And let's see everything **except** normal INFO messages:

```bash
grep -v "INFO" server.log
```{{exec}}

🥷 **This is how professionals debug systems!**

---

## 7. Find Configuration Patterns

Let's analyze our configuration with advanced searching:

```bash
grep -in "password" app.config
```{{exec}}

```bash
grep -n "port" app.config
```{{exec}}

```bash
grep -c "database" app.config
```{{exec}}

Perfect for **configuration analysis and security audits**!

---

## 8. User Management Tasks

Let's practice some user management scenarios:

```bash
grep -i "premium" users.txt
```{{exec}}

```bash
grep -c "Premium" users.txt
```{{exec}}

```bash
grep -v "Standard" users.txt
```{{exec}}

Great for **user account analysis** and **subscription management**!

---

## 🎯 Advanced Options Summary

### Essential Flags
- `grep -i` → **Case-insensitive** (ignore upper/lower case)
- `grep -n` → **Show line numbers** (know exactly where)
- `grep -v` → **Inverted match** (show what DOESN'T match)
- `grep -c` → **Count matches** (how many occurrences?)

### Power Combinations
- `grep -in` → Case-insensitive with line numbers
- `grep -inv` → Case-insensitive inverted search with line numbers
- `grep -ic` → Case-insensitive count

## 💡 Professional Use Cases

### System Administration
- `grep -v "INFO" /var/log/syslog` → Focus on problems only
- `grep -c "ERROR" application.log` → Count errors for reports
- `grep -in "failed" auth.log` → Security analysis with locations

### Development
- `grep -n "TODO" *.js` → Find code tasks with line numbers
- `grep -i "password" config.yml` → Security configuration review
- `grep -c "test" *.py` → Count test functions

### Data Analysis
- `grep -v "^#" config.file` → Remove comment lines
- `grep -ic "premium" users.csv` → Count premium accounts
- `grep -n "error" data.log` → Find data processing issues

Ready to learn the **ultimate ninja technique** — combining grep with other commands using pipes? Click **Next**!