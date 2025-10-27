````markdown
# Step 3 — head: First lines

The `head` command shows the first few lines of a file. Perfect for quick previews!

**Default behavior:**

**Task:** View first 10 lines (default):

```bash
head numbers.txt
```{{exec}}

**Custom line count:**

**Task:** View first 5 lines:

```bash
head -n 5 numbers.txt
```{{exec}}

**Task:** Even shorter - first 3 lines:

```bash
head -3 numbers.txt
```{{exec}}

**Multiple files:**

**Task:** View first lines of multiple files:

```bash
head -5 small.txt numbers.txt
```{{exec}}

**Real-world examples:**

**Task:** Check the beginning of a log file:

```bash
head /var/log/syslog
```{{exec}}

**Task:** Preview a configuration file:

```bash
head /etc/passwd
```{{exec}}

**When to use head:**
- ✅ Quick file previews
- ✅ Checking file format/structure
- ✅ Seeing recent entries in chronological logs
- ✅ Sampling large datasets

**Pro tip:** Combine with other commands like `head -20 largefile.txt | grep error` to search just the beginning!

Click **Check** after exploring head.
````