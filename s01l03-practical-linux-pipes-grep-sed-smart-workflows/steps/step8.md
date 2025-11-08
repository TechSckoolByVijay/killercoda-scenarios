# Step 8 — sed for Text Transformations ✨

Master `sed` (stream editor) - your powerful tool for finding, replacing, and transforming text in real-time!

## Basic Text Replacement

Replace first occurrence per line:

```bash
sed 's/ERROR/FIXED/' logs/app.log | head -5
```{{exec}}

Replace ALL occurrences in each line (global):
```bash
sed 's/INFO/DEBUG/g' logs/app.log | head -5
```{{exec}}

---

## Case-Insensitive Replacement

Use the `I` flag for case-insensitive matching:

```bash
sed 's/error/ALERT/gI' logs/system.log | head -5
```{{exec}}

This catches ERROR, Error, error, ErRoR - all variations!

---

## Clean and Format Data

Remove extra whitespace:

```bash
sed 's/  */ /g' data/users.txt | head -5
```{{exec}}

Convert usernames to uppercase:
```bash
sed 's/^[^:]*/\U&/' data/users.txt | head -5
```{{exec}}

---

## Add Prefixes and Formatting

Add timestamps to log entries:

```bash
sed 's/^/[2024-01-15] /' logs/app.log | head -3
```{{exec}}

Add line numbers:
```bash
sed '=' data/services.txt | sed 'N;s/\n/: /'
```{{exec}}

---

## Delete and Filter Lines

Delete empty lines:

```bash
sed '/^$/d' data/users.txt
```{{exec}}

Delete lines containing specific text:
```bash
sed '/inactive/d' data/users.txt
```{{exec}}

---

## 🎯 Your Turn: Log Processing Challenge

**Challenge:** Clean up log format and standardize entries for better analysis.

**Try this now - standardize date format:**
```bash
sed 's/\([0-9]\{4\}\)-\([0-9]\{2\}\)-\([0-9]\{2\}\)/\3\/\2\/\1/g' logs/app.log | head -3
```{{exec}}

**Convert service names to uppercase:**
```bash
sed 's/^\([^:]*\):/\U\1:/' data/services.txt | head -5
```{{exec}}

**Clean phone numbers (remove dashes):**
```bash
sed 's/-//g' data/users.txt | grep phone | head -3
```{{exec}}

**Replace multiple spaces with single space:**
```bash
sed 's/  */ /g' logs/system.log | head -5
```{{exec}}

**Add severity prefix to errors:**
```bash
sed 's/ERROR/[CRITICAL] ERROR/g' logs/app.log | grep CRITICAL | head -3
```{{exec}}

**If it worked, you should see:** Transformed text with your replacements applied.

**Validation check:** Original vs transformed:
```bash
echo "=== BEFORE ===" && head -2 logs/app.log
echo "=== AFTER ===" && sed 's/ERROR/ALERT/g' logs/app.log | head -2
```{{exec}}

You should see the differences in the output!

---

## 💡 sed Transformation Reference

### 🔄 **Substitution Patterns:**
| Command | Purpose | Example |
|---------|---------|---------|
| `sed 's/old/new/'` | **Replace first match** | `sed 's/error/fixed/'` |
| `sed 's/old/new/g'` | **Replace all matches** | `sed 's/ /_/g'` |
| `sed 's/old/new/gI'` | **Case-insensitive replace** | `sed 's/error/FIXED/gI'` |
| `sed 's/^/prefix/'` | **Add prefix** | `sed 's/^/LOG: /'` |
| `sed 's/$/suffix/'` | **Add suffix** | `sed 's/$/ [END]/'` |

### 🧹 **Deletion Patterns:**
```bash
# Remove empty lines
sed '/^$/d' file.txt

# Remove lines with pattern
sed '/unwanted/d' file.txt

# Remove leading whitespace
sed 's/^ *//' file.txt

# Remove trailing whitespace
sed 's/ *$//' file.txt
```

### 🚀 **Advanced Examples:**
```bash
# Extract IP addresses from logs
sed -n 's/.*\([0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\).*/\1/p'

# Convert CSV to pipe-separated
sed 's/,/|/g' data.csv

# Add line numbers
sed '=' file.txt | sed 'N;s/\n/: /'

# Mask sensitive data
sed 's/password=[^ ]*/password=*****/g' logs/app.log
```

### 🔧 **Data Transformation:**
```bash
# Normalize phone numbers
sed 's/(\([0-9]\{3\}\)) \([0-9]\{3\}\)-\([0-9]\{4\}\)/\1-\2-\3/g'

# Clean email addresses
sed 's/mailto:\([^"]*\)/\1/g'

# Convert timestamps
sed 's/\([0-9]\{2\}\)\/\([0-9]\{2\}\)\/\([0-9]\{4\}\)/\3-\1-\2/g'
```

### ✅ Key Takeaway
`sed` is your text transformation powerhouse - perfect for cleaning data, formatting output, and preprocessing files!

**Ready for the ultimate challenge?** Click **Next** to tackle complex real-world pipelines!