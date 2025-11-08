# Step 6 — sort + uniq for Frequency Analysis 📈

Analyze data patterns and frequencies - the secret to understanding system behavior and finding trends!

## The Power Pipeline Pattern

Here's the classic frequency analysis pipeline:

```bash
cut -d ' ' -f 1 logs/access.log | sort | uniq -c | sort -nr
```{{exec}}

Let's break this down step by step...

---

## Step-by-Step Analysis

**Step 1:** Extract IP addresses
```bash
cut -d ' ' -f 1 logs/access.log
```{{exec}}

**Step 2:** Sort them (required for uniq to work properly)
```bash
cut -d ' ' -f 1 logs/access.log | sort
```{{exec}}

**Step 3:** Count unique occurrences
```bash
cut -d ' ' -f 1 logs/access.log | sort | uniq -c
```{{exec}}

**Step 4:** Sort by count (highest first)
```bash
cut -d ' ' -f 1 logs/access.log | sort | uniq -c | sort -nr
```{{exec}}

Perfect! Now you can see which IPs access your system most frequently.

---

## Why This Order Matters

⚠️ **Important:** `uniq` only works on **sorted data**! It only compares adjacent lines.

See what happens without sorting first:
```bash
cut -d ' ' -f 1 logs/access.log | uniq -c
```{{exec}}

Notice how it doesn't group properly? Always sort before using uniq!

---

## Analyzing HTTP Status Codes

Let's find the most common response codes:

```bash
cut -d ' ' -f 3 logs/access.log | sort | uniq -c | sort -nr
```{{exec}}

This tells you if you have many errors (400s, 500s) or mostly successful requests (200s).

---

## 🎯 Your Turn: Find Top Request Patterns

**Challenge:** Find the most frequently requested URLs and HTTP methods.

**Try this now - analyze HTTP methods:**
```bash
cut -d ' ' -f 2 logs/access.log | sort | uniq -c | sort -nr
```{{exec}}

**Now analyze requested URLs:**
```bash
cut -d ' ' -f 3 logs/access.log | sort | uniq -c | sort -nr
```{{exec}}

**Find the most active departments from user data:**
```bash
cut -d ':' -f 3 data/users.txt | sort | uniq -c | sort -nr
```{{exec}}

**If it worked, you should see:** Counts in descending order with the highest frequency first.

**Validation check:** The first line should have the highest number:
```bash
cut -d ':' -f 3 data/users.txt | sort | uniq -c | sort -nr | head -1
```{{exec}}

The number at the start should be the maximum count!

---

## 💡 Frequency Analysis Pattern

### 🔄 **The Standard Pipeline:**
```bash
command | sort | uniq -c | sort -nr
```

### 📊 **What Each Step Does:**
1. **Extract data** - Get the field you want to analyze
2. **sort** - Group identical items together  
3. **uniq -c** - Count occurrences of each unique item
4. **sort -nr** - Sort by count (numerical, reverse = highest first)

### 🚀 **Real-World Applications:**
```bash
# Most common error messages
grep ERROR logs/app.log | sort | uniq -c | sort -nr

# Top user agents from web logs  
cut -d '"' -f 6 access.log | sort | uniq -c | sort -nr

# Most frequent commands from bash history
cut -d ' ' -f 1 ~/.bash_history | sort | uniq -c | sort -nr
```

### ✅ Key Takeaway
Master the `sort | uniq -c | sort -nr` pattern - it's essential for data analysis and system monitoring!

**Ready to count everything?** Click **Next** to learn the `wc` command!