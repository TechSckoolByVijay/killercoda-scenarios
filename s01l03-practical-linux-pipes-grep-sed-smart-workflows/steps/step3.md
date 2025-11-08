# Step 3 — grep Basics for Searching 🔍

Master `grep` - the text searching Swiss Army knife that every Linux admin lives by!

## Basic Text Search

Find specific text in files:

```bash
grep "ERROR" logs/app.log
```{{exec}}

`grep` shows you every line containing "ERROR". Perfect for troubleshooting!

---

## Case-Insensitive Search with -i

Sometimes you don't know the exact case:

```bash
grep -i "warning" logs/app.log
```{{exec}}

The `-i` flag matches "WARNING", "warning", "Warning", etc. Much more flexible!

Try it with different cases:
```bash
grep -i "info" logs/app.log
```{{exec}}

---

## Line Numbers with -n

Want to know **where** matches occur?

```bash
grep -n "timeout" logs/system.log
```{{exec}}

The `-n` flag shows line numbers - invaluable for debugging and referencing specific log entries.

Check application timeouts:
```bash
grep -n "timeout" logs/app.log
```{{exec}}

---

## Searching Multiple Patterns

Search for any authentication-related events:

```bash
grep -i "auth" logs/system.log
```{{exec}}

Find database-related messages:
```bash
grep -i "database" logs/app.log
```{{exec}}

---

## 🎯 Your Turn: Hunt for Failures

**Challenge:** Find all case-insensitive "failed" entries with line numbers across the logs.

**Try this now:**
```bash
grep -i -n "failed" logs/app.log
```{{exec}}

**Try in system log too:**
```bash
grep -i -n "failed" logs/system.log
```{{exec}}

**If it worked, you should see:** Lines with `:number:` patterns showing where failures occurred.

**Validation check:** Confirm your results contain line numbers:
```bash
grep -i -n "failed" logs/system.log | grep ":"
```{{exec}}

You should see colon-separated line numbers in the output!

---

## 💡 grep Flag Cheat Sheet

| Flag | Purpose | Example |
|------|---------|---------|
| `-i` | **Case insensitive** | `grep -i "error"` |
| `-n` | **Show line numbers** | `grep -n "timeout"` |
| `-v` | **Invert match** (exclude) | `grep -v "INFO"` |
| `-c` | **Count matches** | `grep -c "ERROR"` |

### 🚀 Pro Tip
Combine flags: `grep -in "warning"` gives you case-insensitive search with line numbers!

### ✅ Key Takeaway
`grep` is your text detective - use `-i` for flexible matching and `-n` to pinpoint locations!

**Ready for advanced grep patterns?** Click **Next** to learn recursive search and alternation!