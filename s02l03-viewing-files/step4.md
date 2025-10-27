````markdown
# Step 4 — tail: Last lines

The `tail` command shows the last few lines of a file. Essential for viewing recent log entries!

**Default behavior:**

**Task:** View last 10 lines (default):

```bash
tail numbers.txt
```{{exec}}

**Custom line count:**

**Task:** View last 5 lines:

```bash
tail -n 5 numbers.txt
```{{exec}}

**Task:** View last 3 lines:

```bash
tail -3 numbers.txt
```{{exec}}

**Multiple files:**

**Task:** View last lines of multiple files:

```bash
tail -5 small.txt numbers.txt
```{{exec}}

**Real-world log viewing:**

**Task:** Check recent system events:

```bash
tail /var/log/syslog
```{{exec}}

**Task:** See recent authentication attempts:

```bash
tail /var/log/auth.log
```{{exec}}

**When to use tail:**
- ✅ Checking recent log entries
- ✅ Monitoring file endings
- ✅ Debugging recent activity
- ✅ Viewing latest data in append-only files

**Pro tip:** Combine with grep like `tail -50 /var/log/syslog | grep error` to find recent errors!

Click **Check** after exploring tail.
````