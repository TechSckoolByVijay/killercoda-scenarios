````markdown
# Step 3 — head: First lines

The `head` command shows the first few lines of a file. Perfect for quick previews!

**Default behavior:**

**Task:** View first 10 lines (default):

```
head numbers.txt
```

**Custom line count:**

**Task:** View first 5 lines:

```
head -n 5 numbers.txt
```

**Task:** Even shorter - first 3 lines:

```
head -3 numbers.txt
```

**Multiple files:**

**Task:** View first lines of multiple files:

```
head -5 small.txt numbers.txt
```

**Real-world examples:**

**Task:** Check the beginning of a log file:

```
head /var/log/syslog
```

**Task:** Preview a configuration file:

```
head /etc/passwd
```

**When to use head:**
- ✅ Quick file previews
- ✅ Checking file format/structure
- ✅ Seeing recent entries in chronological logs
- ✅ Sampling large datasets

**Pro tip:** Combine with other commands like `head -20 largefile.txt | grep error` to search just the beginning!

Click **Check** after exploring head.
````