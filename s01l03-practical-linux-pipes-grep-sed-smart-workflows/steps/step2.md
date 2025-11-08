# Step 2 — Command Chaining Mastery ⛓️

Control command execution with `;`, `&&`, and `||` - essential for automation and error handling!

## Sequential Execution with ;

The semicolon (`;`) runs commands **one after another**, regardless of success or failure:

```bash
echo "First command" ; echo "Second command" ; echo "Third command"
```{{exec}}

All three commands run in sequence. Let's try with file operations:

```bash
cd /workspace ; pwd ; ls logs/
```{{exec}}

Perfect! Each command executed regardless of the previous result.

---

## Conditional Success with &&

The `&&` operator only runs the next command if the **previous one succeeded**:

```bash
cd /workspace && echo "Successfully changed directory"
```{{exec}}

```bash
cd /nonexistent && echo "This won't print"
```{{exec}}

See? The second `echo` didn't run because `cd` failed.

---

## Conditional Failure with ||

The `||` operator runs the next command only if the **previous one failed**:

```bash
cd /workspace || echo "Failed to change directory"
```{{exec}}

```bash
cd /nonexistent || echo "Directory not found - using current location"
```{{exec}}

Great for providing fallback actions when commands fail!

---

## Combining All Three

You can create smart command sequences:

```bash
cd /workspace && echo "Found workspace" || echo "Workspace missing"
```{{exec}}

```bash
cd /missing && echo "Found directory" || echo "Directory not found"
```{{exec}}

This pattern is perfect for error handling in scripts!

---

## 🎯 Your Turn: Build Smart Command Chains

**Challenge:** Create a command chain that tries to find errors, and provides feedback.

**Try this now:**
```bash
grep -q "ERROR" logs/app.log && echo "Errors found in app.log" || echo "No errors detected"
```{{exec}}

**Try the opposite case:**
```bash
grep -q "SUCCESS" logs/app.log && echo "Success messages found" || echo "No success messages found"
```{{exec}}

**If it worked, you should see:** Different messages based on whether patterns were found.

**Validation check:**
```bash
echo "Testing complete" ; pwd ; echo "All commands executed"
```{{exec}}

You should see all three outputs in order!

---

## 💡 Chaining Patterns

| Operator | Behavior | Use Case |
|----------|----------|----------|
| `;` | Always run next | Sequential tasks |
| `&&` | Run if success | Dependent operations |
| `||` | Run if failure | Error handling |

### 🚀 Real-World Example
```bash
cd /var/log && tail -f syslog || echo "Cannot access system logs"
```

### ✅ Key Takeaway
Command chaining gives you precise control over execution flow - essential for robust workflows!

**Ready to search text like a pro?** Click **Next** to master grep basics!