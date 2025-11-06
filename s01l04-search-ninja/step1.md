# Step 1 — Basic Search (grep) 🔍

Welcome to your search ninja training! Let's start with the **fundamental power of grep** — finding text in files instantly!

## Your First Search Weapon

`grep` stands for **Global Regular Expression Print**, but think of it simply as **"find me this text in that file"**!

---

## 1. Enter Your Training Dojo

Let's navigate to your practice environment:

```bash
cd ~/ninja-dojo
```{{exec}}

```bash
ls -lah
```{{exec}}

Perfect! Your training files are ready. Let's see what we're working with.

---

## 2. Your First Search Mission

Let's search for the word "ERROR" in the server log:

```bash
grep "ERROR" server.log
```{{exec}}

🎯 **Ninja power activated!** grep instantly found all lines containing "ERROR"!

---

## 3. Search for Different Terms

Let's try searching for other important log entries:

```bash
grep "INFO" server.log
```{{exec}}

That's a lot of INFO messages! Let's try something more specific:

```bash
grep "WARN" server.log
```{{exec}}

Much better! Notice how grep **highlights the matching text**?

---

## 4. Search in Configuration Files

Now let's search through our configuration file:

```bash
grep "database" app.config
```{{exec}}

Great! You found all database-related configuration lines.

---

## 5. Search for User Information

Let's search the users file:

```bash
grep "Premium" users.txt
```{{exec}}

```bash
grep "alice" users.txt
```{{exec}}

🎯 **Ninja technique unlocked!** You can find specific users or account types instantly!

---

## 6. Search Multiple Files at Once

Here's where grep becomes **really powerful** — searching multiple files:

```bash
grep "server" server.log app.config
```{{exec}}

Notice how grep shows you **which file** each match came from? Essential for multi-file analysis!

---

## 7. Search with Wildcards

You can search all text files at once:

```bash
grep "port" *.txt *.config *.log
```{{exec}}

**Boom!** grep searched through **all matching files** and found every occurrence of "port"!

---

## 8. Exact Phrase Search

Sometimes you need to search for **exact phrases**. Use quotes:

```bash
grep "Database connection" server.log
```{{exec}}

```bash
grep "User login successful" server.log
```{{exec}}

Perfect! This finds the **exact phrase**, not just individual words.

---

## 🎯 Basic Search Summary

### Core grep Syntax
- `grep "searchterm" filename` → Find text in specific file
- `grep "phrase" file1 file2` → Search multiple files
- `grep "text" *.log` → Search all matching files
- `grep "exact phrase"` → Search for complete phrases

### Real-World Usage
- **Find errors:** `grep "ERROR" logfile.log`
- **Check configurations:** `grep "password" config.file`
- **Locate users:** `grep "username" users.txt`
- **Multi-file analysis:** `grep "pattern" *.txt`

## 💡 Ninja Wisdom

- **Always use quotes** around your search terms
- **grep is case-sensitive** by default (we'll fix this next!)
- **Multiple files = grep shows filenames** automatically
- **No matches = grep returns nothing** (not an error)

## 🔥 Quick Practice

Before moving on, try these ninja challenges:

```bash
grep "production" app.config
```{{exec}}

```bash
grep "timeout" server.log app.config
```{{exec}}

Ready to learn **advanced search techniques** that will make you a true grep ninja? Click **Next**!