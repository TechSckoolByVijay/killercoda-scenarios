# Step 5 — cut for Column Extraction 📊

Extract specific columns from structured data - essential for processing CSV files, logs, and configuration data!

## Extract IP Addresses from Logs

Let's extract the first column (IP addresses) from access logs:

```bash
cat logs/access.log
```{{exec}}

```bash
cut -d ' ' -f 1 logs/access.log
```{{exec}}

The `-d ' '` sets **space as delimiter**, and `-f 1` extracts **field 1**. Clean IP address list!

---

## Extract Multiple Fields

Get both IP addresses and HTTP methods:

```bash
cut -d ' ' -f 1,2 logs/access.log
```{{exec}}

The comma separates multiple field numbers. Perfect for getting related data columns!

---

## Working with Different Delimiters

Let's look at our colon-delimited user data:

```bash
cat data/users.txt
```{{exec}}

Extract just usernames (first field):
```bash
cut -d ':' -f 1 data/users.txt
```{{exec}}

Extract names and departments:
```bash
cut -d ':' -f 2,3 data/users.txt
```{{exec}}

---

## Comma-Delimited Data

Check the services file:

```bash
cat data/services.txt
```{{exec}}

Extract service names and status:
```bash
cut -d ',' -f 1,3 data/services.txt
```{{exec}}

Get only running services:
```bash
grep "running" data/services.txt | cut -d ',' -f 1
```{{exec}}

---

## 🎯 Your Turn: Extract User Information

**Challenge:** Extract only the usernames from the user data, then find active users.

**Try this now - extract first field (usernames):**
```bash
cut -d ':' -f 1 data/users.txt
```{{exec}}

**Now get usernames of only active users:**
```bash
grep "active" data/users.txt | cut -d ':' -f 1
```{{exec}}

**Extract departments of active users:**
```bash
grep "active" data/users.txt | cut -d ':' -f 3
```{{exec}}

**If it worked, you should see:** Clean lists of usernames and departments without other data.

**Validation check:** Count unique departments:
```bash
grep "active" data/users.txt | cut -d ':' -f 3 | sort | uniq -c
```{{exec}}

You should see department counts for active users!

---

## 💡 cut Command Reference

### 🔧 **Basic Syntax:**
```bash
cut -d 'delimiter' -f field_numbers file
```

### 📋 **Field Selection:**
| Pattern | Meaning | Example |
|---------|---------|---------|
| `-f 1` | First field only | `cut -d ',' -f 1` |
| `-f 1,3` | Fields 1 and 3 | `cut -d ':' -f 1,3` |
| `-f 2-4` | Fields 2 through 4 | `cut -d ' ' -f 2-4` |
| `-f 3-` | Field 3 to end | `cut -d ',' -f 3-` |

### 🚀 **Real-World Examples:**
```bash
# Extract email domains from user list
cut -d '@' -f 2 emails.txt

# Get just filenames from ls -l output
ls -l | cut -d ' ' -f 9

# Extract ports from netstat output
netstat -ln | cut -d ':' -f 2
```

### ✅ Key Takeaway
`cut` is perfect for structured data - specify the delimiter and field numbers to extract exactly what you need!

**Ready to count and analyze frequencies?** Click **Next** to master sort and uniq!