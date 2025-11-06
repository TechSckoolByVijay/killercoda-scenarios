# Step 3 — Master Precision Viewing & Search 🎯

Great work! Now let's learn the precision tools that Linux professionals use every day for analyzing files! 🔍

## 🔍 Practice Exercise 1: Peek at File Beginnings and Endings

Sometimes you only need to see the start or end of a file. Let's practice with precision viewing:

```bash
head -5 documentation.txt
```{{exec}}

```bash
tail -5 documentation.txt
```{{exec}}

**What we're doing:** Using `head -5` to see the first 5 lines and `tail -5` for the last 5 lines  
**What you'll see:** Just the beginning and ending of the file - perfect for checking file structure or finding recent entries! 📄

---

## 🔍 Practice Exercise 2: Count and Analyze File Properties

Let's gather statistics about your files. This is like getting a file's vital signs:

```bash
wc notes.txt
```{{exec}}

```bash
wc -l documentation.txt
```{{exec}}

**What we're doing:** Using `wc` to count words, lines, and characters in your files  
**What you'll see:** Statistics in format: lines, words, characters, filename. The `-l` flag shows just line count! 📊

---

## 🔍 Practice Exercise 3: Search for Specific Content

Now let's learn to find specific text in files. This is like having a detective's magnifying glass:

```bash
grep "INFO" server.log
```{{exec}}

```bash
grep -i "error" server.log
```{{exec}}

**What we're doing:** Using `grep` to search for "INFO" messages and any "error" text (case-insensitive with `-i`)  
**What you'll see:** Only the lines containing your search terms are displayed - grep filters out everything else! 🔍

🎉 **Congratulations!** You've mastered file creation, content addition, viewing techniques, and text searching. You now have the essential skills to create, organize, and analyze files like a Linux professional! 🏆

Ready to learn powerful text searching and advanced file operations? →
