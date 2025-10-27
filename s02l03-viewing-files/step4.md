````markdown
# Step 4 — tail: Last lines

The `tail` command shows the last few lines of a file. Essential for viewing recent log entries!

**Default behavior:**

**Task:** View last 10 lines (default):

```
tail numbers.txt
```

**Custom line count:**

**Task:** View last 5 lines:

```
tail -n 5 numbers.txt
```

**Task:** View last 3 lines:

```
tail -3 numbers.txt
```

**Multiple files:**

**Task:** View last lines of multiple files:

```
tail -5 small.txt numbers.txt
```

**Real-world log viewing:**

**Task:** Check recent system events:

```
tail /var/log/syslog
```

**Task:** See recent authentication attempts:

```
tail /var/log/auth.log
```

**When to use tail:**
- ✅ Checking recent log entries
- ✅ Monitoring file endings
- ✅ Debugging recent activity
- ✅ Viewing latest data in append-only files

**Pro tip:** Combine with grep like `tail -50 /var/log/syslog | grep error` to find recent errors!

Click **Check** after exploring tail.
````