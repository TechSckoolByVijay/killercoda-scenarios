# Step 3 — Remove & Find (rm, find) 🗑️🔍

Excellent! You've mastered copying and moving files. Now let's learn **safe deletion practices** and **powerful file discovery** — the final pieces of your file operations toolkit!

## Safe Deletion & File Discovery

`rm` is your **deletion tool** (use with caution!), and `find` is your **GPS for files** — together they complete your file management arsenal!

---

## 1. Safe File Deletion Practice

Let's start with safe deletion techniques. First, see what's in our temp directory:

```bash
cd ~/file-ops-lab
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

Let's safely remove a single file:

```bash
rm temp/uploads/file.txt
```{{exec}}

```bash
ls -lah temp/uploads/
```{{exec}}

🎯 **File deleted!** Notice it's gone — `rm` is **permanent** (no recycle bin)!

---

## 2. Remove Multiple Files

You can delete multiple files at once:

```bash
ls -lah temp/cache/
```{{exec}}

```bash
rm temp/cache/data.cache
```{{exec}}

```bash
ls -lah temp/cache/
```{{exec}}

Let's remove the old backup file:

```bash
rm temp/old-backup.tar.gz
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

Good! Cleanup completed safely.

---

## 3. Remove Directories (-r flag)

For directories, you need the **recursive** flag. **Be very careful!**

```bash
# First, let's see what's in the temp directory
ls -lah temp/
```{{exec}}

```bash
# Remove the empty cache directory
rm -r temp/cache/
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

🎯 **Directory removed!** The `-r` flag removes directories and **all contents**.

---

## 4. Introduction to find - Your File GPS

Now let's learn `find` — the most powerful file location tool in Linux:

```bash
# Find all files in the current directory
find . -name "*.js"
```{{exec}}

Amazing! `find` located all JavaScript files in your entire project!

---

## 5. Find Files by Name Pattern

Let's search for different file types:

```bash
# Find all configuration files
find . -name "*.config"
```{{exec}}

```bash
# Find all YAML files
find . -name "*.yml"
```{{exec}}

```bash
# Find all markdown files
find . -name "*.md"
```{{exec}}

🎯 **File discovery mastery!** `find` can locate any file pattern instantly.

---

## 6. Find Files in Specific Directories

You can search within specific locations:

```bash
# Find all files in the projects directory
find projects/ -name "*.js"
```{{exec}}

```bash
# Find all files in backups
find backups/ -type f
```{{exec}}

The `-type f` flag finds only **files** (not directories).

---

## 7. Find Recently Modified Files

Let's find files modified recently:

```bash
# Find files modified in the last day
find . -mtime -1
```{{exec}}

```bash
# Find files by specific patterns
find projects/ -name "*.sh"
```{{exec}}

Perfect for tracking **recent changes** and **specific file types**!

---

## 8. Advanced find + rm Combination

Here's a **powerful professional technique** — find and remove in one command:

**First, let's create some test files:**
```bash
touch temp/test1.tmp temp/test2.tmp temp/test3.tmp
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

**Now find all .tmp files:**
```bash
find temp/ -name "*.tmp"
```{{exec}}

**Remove them all at once (be careful with this!):**
```bash
find temp/ -name "*.tmp" -delete
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

🎯 **Power combo!** Found and deleted all temporary files in one command!

---

## 9. Find Directories

You can search for directories specifically:

```bash
# Find all directories
find . -type d -name "*config*"
```{{exec}}

```bash
# Find all directories in projects
find projects/ -type d
```{{exec}}

Great for **finding folder structures** and **organizing directories**.

---

## 10. Professional Cleanup Workflow

Let's demonstrate a real-world cleanup scenario:

```bash
# First, create some test files to clean up
mkdir -p temp/cleanup-test
touch temp/cleanup-test/old1.log temp/cleanup-test/old2.log temp/cleanup-test/important.txt
```{{exec}}

```bash
# Find all log files
find temp/cleanup-test/ -name "*.log"
```{{exec}}

```bash
# Remove all log files (simulate log cleanup)
find temp/cleanup-test/ -name "*.log" -delete
```{{exec}}

```bash
# Verify cleanup
ls -lah temp/cleanup-test/
```{{exec}}

🎯 **Professional cleanup complete!** Only important files remain.

---

## 11. Safe Practice: Test Before Delete

**Professional tip:** Always test your find command before deleting:

```bash
# Create test files
touch temp/test.backup temp/test.old temp/important.file
```{{exec}}

```bash
# First: TEST - see what would be found
find temp/ -name "*.backup" -o -name "*.old"
```{{exec}}

```bash
# Then: EXECUTE - delete only what you intended
find temp/ -name "*.backup" -o -name "*.old" -delete
```{{exec}}

```bash
ls -lah temp/
```{{exec}}

**Always test your find patterns before using `-delete`!**

---

## 🎯 Remove & Find Summary

### Safe Deletion (rm)
- `rm filename` → Remove single file
- `rm file1 file2 file3` → Remove multiple files
- `rm -r directory/` → Remove directory and contents (CAREFUL!)
- **Remember:** rm is permanent — no undo!

### Powerful File Finding (find)
- `find . -name "pattern"` → Find by name pattern
- `find directory/ -type f` → Find only files
- `find directory/ -type d` → Find only directories
- `find . -mtime -1` → Find recent files
- `find . -name "*.tmp" -delete` → Find and delete

## 💡 Professional Use Cases

### System Cleanup
```bash
# Remove old log files
find /var/log/ -name "*.log.old" -delete

# Clean temporary files
find /tmp/ -name "*.tmp" -mtime +7 -delete

# Find large files
find / -type f -size +100M
```

### Development Workflows
```bash
# Remove build artifacts
find . -name "*.o" -o -name "*.pyc" -delete

# Find configuration files
find . -name "config*" -type f

# Locate recent changes
find src/ -mtime -1
```

## ⚠️ Critical Safety Reminders

### For rm (deletion)
- **No undo** — deleted files are gone forever
- **Test commands** on unimportant files first
- **Double-check paths** before executing
- **Use ls first** to verify what you're about to delete

### For find + delete
- **Always test** your find command without `-delete` first
- **Use specific paths** rather than starting from root (/)
- **Be very careful** with wildcards and patterns

## 🏆 File Operations Mastery Achieved!

You now have **complete file management control**:
✅ **Copy** — Create backups and duplicates safely  
✅ **Move** — Organize and rename efficiently  
✅ **Remove** — Clean up responsibly and safely  
✅ **Find** — Locate any file anywhere in the system

Ready to celebrate your **File Operations Mastery**? Click **Next**!