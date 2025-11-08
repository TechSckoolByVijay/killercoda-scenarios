# Step 4 — Advanced grep Patterns 🎯

Supercharge your searching with recursive grep and pattern alternation - the advanced techniques pros use daily!

## Recursive Search with -r

Search across **entire directories** at once:

```bash
grep -r "ERROR" logs/
```{{exec}}

The `-r` flag searches through all files in the `logs/` directory. Notice how it shows the filename before each match!

Find all authentication events across all logs:
```bash
grep -r -i "auth" logs/
```{{exec}}

---

## Pattern Alternation with -E

Search for **multiple patterns** using `|` (OR logic):

```bash
grep -E "WARN|ERROR" logs/app.log
```{{exec}}

This finds lines containing either "WARN" OR "ERROR" - perfect for catching all problematic log entries!

Try finding different HTTP status codes:
```bash
grep -E "200|500" logs/access.log
```{{exec}}

---

## Combining Recursive and Alternation

The ultimate search combo:

```bash
grep -r -E "failed|timeout|denied" logs/
```{{exec}}

This searches all log files for any failure-related patterns. Incredibly powerful for system troubleshooting!

---

## Case-Insensitive Advanced Patterns

Combine all the power:

```bash
grep -r -i -E "error|warning|critical" logs/
```{{exec}}

This finds any severity level across all logs, regardless of case. Perfect for comprehensive log analysis!

---

## 🎯 Your Turn: Hunt for Security Events

**Challenge:** Find all security-related events across all logs (case-insensitive).

**Try this now:**
```bash
grep -r -i "denied" logs/
```{{exec}}

**Now search for multiple security patterns:**
```bash
grep -r -i -E "denied|failed|timeout|403" logs/
```{{exec}}

**If it worked, you should see:** Multiple files and security-related events displayed with filenames.

**Validation check:** Count how many security events you found:
```bash
grep -r -i -E "denied|failed|timeout|403" logs/ | wc -l
```{{exec}}

You should see a number ≥ 1 showing your matches!

---

## 💡 Advanced grep Patterns

### 🔍 **Pattern Types:**
- `pattern1|pattern2` - Match either pattern
- `^pattern` - Line starts with pattern
- `pattern$` - Line ends with pattern
- `[0-9]` - Any digit
- `.*` - Any characters

### 🚀 **Real-World Examples:**
```bash
# Find all HTTP error codes
grep -E "40[0-9]|50[0-9]" access.log

# Find lines starting with timestamps
grep "^2025" logs/app.log

# Find all IP addresses (simple pattern)
grep -E "([0-9]{1,3}\.){3}[0-9]{1,3}" logs/access.log
```

### ✅ Key Takeaway
Master `-r` for directory-wide searches and `-E` for complex patterns - essential for real-world log analysis!

**Ready to extract specific data columns?** Click **Next** to learn the `cut` command!