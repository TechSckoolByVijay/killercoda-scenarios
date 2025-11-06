## Step 1 — Interactive Command Knowledge Check

Test your Linux command knowledge through hands-on exploration!

---

### 🎯 Challenge 1: File Listing Discovery

**Question:** Which command shows detailed file information including permissions, owner, size, and timestamp?

Try these commands and observe the differences:

```bash
ls
```{{exec}}

```bash
ls -l
```{{exec}}

```bash
whoami
```{{exec}}

**Notice the difference?** The `-l` flag provides the detailed "long" listing format you need!

---

### 🎯 Challenge 2: Time Sorting Exploration

**Question:** Which flag sorts files by modification time (newest first)?

Let's test different flags in the demo directory:

```bash
cd ~/demo
```{{exec}}

```bash
ls -l
```{{exec}}

```bash
ls -lt
```{{exec}}

```bash
ls -la
```{{exec}}

**Observation:** The `-t` flag sorts by modification time with newest files first!

---

### 🎯 Challenge 3: Reverse Sorting Test

**Question:** How do you show the OLDEST files first when sorting by time?

Try these combinations:

```bash
ls -lt
```{{exec}}

```bash
ls -ltr
```{{exec}}

**Discovery:** The `-r` flag reverses the order, so `-ltr` shows oldest files first!

---

### 🎯 Bonus Challenge: Flag Combinations

Test these powerful combinations and see what each does:

```bash
ls -lh
```{{exec}}

```bash
ls -lth
```{{exec}}

```bash
ls -lah
```{{exec}}

<details>
<summary>💡 Pro Tips Summary</summary>

**Master these `ls` combinations:**
- `ls -l` - Detailed listing (permissions, owner, size, date)
- `ls -lt` - Sort by time, newest first  
- `ls -ltr` - Sort by time, oldest first (reverse)
- `ls -lh` - Human-readable file sizes (KB, MB, GB)
- `ls -la` - Show hidden files (starting with .)
- `ls -lth` - Time sorted with human-readable sizes
- `ls -lah` - All files with human-readable sizes

**Remember:** You can combine multiple flags like `-lth` for maximum information!

</details>

### ✅ Knowledge Check Complete!

You've discovered the power of `ls` flags through hands-on experimentation. Ready for practical challenges? Click **Next**!