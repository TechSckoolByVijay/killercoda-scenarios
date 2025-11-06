# Step 3 — Peek at Content (head, tail) 🎯

Outstanding! You can now view entire files with `cat` and scroll through large files with `less`. Time to learn **precision viewing** techniques!

## Your Precision Viewing Tools

Think of `head` as **peeking at the first page** of a book, and `tail` as **checking the ending**! Perfect for quick file analysis.

---

## 1. Preview the Beginning with head

Let's see the **first few lines** of our documentation:

```bash
head documentation.txt
```{{exec}}

🎯 **Perfect!** `head` shows you the **first 10 lines** by default — great for quick file previews!

---

## 2. Check the End with tail

Now let's see how the documentation **ends**:

```bash
tail documentation.txt
```{{exec}}

Excellent! `tail` shows the **last 10 lines** — perfect for seeing conclusions or recent entries.

---

## 3. Customize the Number of Lines

Want to see more or fewer lines? Use the `-n` flag:

```bash
head -n 5 documentation.txt
```{{exec}}

```bash
tail -n 3 server.log
```{{exec}}

Now you have **precise control** over how much content to view!

---

## 4. Log File Analysis (Real-World Usage)

This is where `head` and `tail` **really shine**! Let's analyze our server log:

**Check how the server started:**
```bash
head -n 6 server.log
```{{exec}}

**Check the most recent activity:**
```bash
tail -n 6 server.log
```{{exec}}

🎯 **This is how professionals debug systems!** Quick glimpses at the beginning and end of logs.

---

## 5. Find Problems Quickly

Let's look for errors in the server log. First, see the full log structure:

```bash
head -n 8 server.log
```{{exec}}

```bash
tail -n 8 server.log
```{{exec}}

Notice the ERROR and WARN messages? In real debugging, you'd search for these patterns!

---

## 6. Compare File Beginnings

Let's compare how different files start:

```bash
head -n 3 app.config
```{{exec}}

```bash
head -n 3 server.log
```{{exec}}

```bash
head -n 3 documentation.txt
```{{exec}}

See how each file type has a **different structure**? `head` helps you quickly identify file types!

---

## 7. Professional Workflow Combination

Here's a **pro workflow** for analyzing any unknown file:

```bash
ls -lah server.log
```{{exec}}

```bash
head -n 5 server.log
```{{exec}}

```bash
tail -n 5 server.log
```{{exec}}

This tells you: **file size**, **how it starts**, and **how it ends** — perfect file analysis in 3 commands!

---

## 8. Create and Test Your Own File

Let's create a file and test all our viewing techniques:

```bash
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5\nLine 6\nLine 7\nLine 8\nLine 9\nLine 10" > test-file.txt
```{{exec}}

Now test all your viewing skills:

```bash
cat test-file.txt
```{{exec}}

```bash
head -n 3 test-file.txt
```{{exec}}

```bash
tail -n 3 test-file.txt
```{{exec}}

Perfect! You can now analyze any file content!

---

## 🎯 Precision Viewing Summary

### head - Preview Beginning
- `head filename` → First 10 lines
- `head -n 5 filename` → First 5 lines
- **Best for:** File type identification, checking structure, seeing how things start

### tail - Check Ending  
- `tail filename` → Last 10 lines
- `tail -n 3 filename` → Last 3 lines
- **Best for:** Recent log entries, file conclusions, latest activity

## 💡 Professional Use Cases

### System Administration
- `tail -n 50 /var/log/syslog` → Check recent system events
- `head -n 20 /etc/passwd` → See user account structure

### Development
- `tail -n 100 app.log` → Check recent application errors
- `head config.json` → Verify configuration file format

### Data Analysis
- `head data.csv` → Check CSV file structure and headers
- `tail -n 5 results.txt` → See final analysis results

## 🏆 Complete File Toolkit

You now have the **complete Linux file toolkit**:

✅ **Create:** `touch` (files) & `mkdir` (directories)  
✅ **View:** `cat` (full content) & `less` (scrollable)  
✅ **Analyze:** `head` (beginning) & `tail` (ending)

## 🔥 Master Challenge

Try this **real-world scenario**:
1. Create a project directory structure
2. Add some configuration files
3. Use `head` to check file formats
4. Use `tail` to verify file endings
5. Use `less` for detailed review

**Congratulations!** You've mastered **file creation and viewing** — essential skills every Linux professional uses daily! Click **Next** to celebrate your achievement!