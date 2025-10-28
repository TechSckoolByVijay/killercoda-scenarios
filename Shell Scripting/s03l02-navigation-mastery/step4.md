# Step 4 — Advanced ls Options

Time to become an `ls` power user! 🔥

You've learned basic `ls`, but there's so much more power hidden in this command. Let's unlock the advanced features!

---

## 🎯 The Ultimate ls Arsenal

### Long Format with Details:
```bash
ls -l
```{{exec}}

This shows:
- Permissions (who can read/write/execute)
- Owner and group
- File size
- Last modification date

### Human-Readable Sizes:
```bash
ls -lh
```{{exec}}

Now file sizes show as `1.2K`, `4.5M`, `2.1G` instead of raw bytes!

### Everything (Including Hidden):
```bash
ls -la
```{{exec}}

Shows hidden files (starting with `.`) + detailed information.

---

## 📊 Advanced Sorting and Filtering

### Sort by Size (Largest First):
```bash
ls -lhS
```{{exec}}

### Sort by Time (Newest First):
```bash
ls -lht
```{{exec}}

### Reverse Order:
```bash
ls -lhtr
```{{exec}}

This shows oldest files first - great for finding old log files!

---

## 🎨 Colors and Formatting

### Force Colors:
```bash
ls --color=always
```{{exec}}

### Tree-like View (if available):
```bash
ls -la | head -10
```{{exec}}

---

## 🔍 Filtering and Patterns

### Only Show Directories:
```bash
ls -ld */
```{{exec}}

### Show Specific File Types:
```bash
ls *.txt
```{{exec}}

```bash
ls *.log
```{{exec}}

### Show Files Starting with Dot:
```bash
ls -ld .*
```{{exec}}

---

## 💡 Real-World Use Cases

### Find Recently Modified Files:
```bash
cd /var/log && ls -lht | head -5
```{{exec}}

### Check Directory Sizes:
```bash
ls -lh
```{{exec}}

### Quick Security Audit:
```bash
ls -la | grep "^-rw"
```{{exec}}

---

## 🚀 Pro Combinations

Combine flags for maximum power:

```bash
ls -lahS
```{{exec}}

This gives you:
- **l** = Long format
- **a** = All files (including hidden)  
- **h** = Human-readable sizes
- **S** = Sort by size

**Your Task:** Try all these advanced `ls` options and see how much more information you can discover!

Click **Check** when you've mastered the advanced `ls` techniques.