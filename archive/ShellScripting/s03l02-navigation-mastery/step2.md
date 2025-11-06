# Step 2 — Understanding Paths

Before we start moving around, let's understand the **GPS system of Linux**! 🗺️

Think of Linux as a huge building with floors and rooms. There are two ways to describe any location:

---

## 🏠 Absolute Paths (From the Main Gate)

Absolute paths **always start with /** (the root directory):

```bash
pwd
```{{exec}}

This shows your absolute path - the complete address from the root `/` to where you are.

### Examples of Absolute Paths:
- `/home/user/documents` - Complete address from root
- `/etc/nginx/nginx.conf` - Exact location of a config file
- `/var/log/syslog` - Full path to system logs

---

## 🚶 Relative Paths (From Where You Stand)

Relative paths start from your **current location**:

### Special Directory Symbols:
- `.` = Current directory (where you are now)
- `..` = Parent directory (one level up)
- `~` = Your home directory

Let's explore these:

```bash
ls .
```{{exec}}

```bash
ls ..
```{{exec}}

```bash
ls ~
```{{exec}}

---

## 🎯 Real-World Analogy

**Absolute Path** = "Go to Building A, Floor 3, Room 305"  
**Relative Path** = "Go down the hall, turn left, second door"

### 🧭 Navigation Examples:

From `/home/user`:
- **Absolute**: `/home/user/documents/file.txt`
- **Relative**: `documents/file.txt` (same destination!)

---

## 🔍 Let's Explore the Root

See what's at the very top of Linux:

```bash
ls /
```{{exec}}

These are the main "neighborhoods" of Linux:
- `/home` - User home directories
- `/etc` - Configuration files  
- `/var` - Variable data (logs, databases)
- `/usr` - User programs and utilities

**Your Task:** Run all the commands above to understand absolute vs relative paths!

Click **Check** when you've explored different path types.