# Step 2 — Advanced Search Patterns 🎯

Now let's level up your search skills with patterns and regular expressions - your ninja tools for complex searches! ⚔️

## 🔍 Practice Exercise 1: Search with Line Numbers

Sometimes you need to know exactly where your search results are located in the file:

```bash
grep -n "ERROR" server.log
```{{exec}}

```bash
grep -n "192.168" server.log
```{{exec}}

**What we're doing:** Using `-n` flag to show line numbers alongside your search results  
**What you'll see:** Each match is prefixed with its line number - perfect for debugging or referencing specific locations! 📍

---

## 🔍 Practice Exercise 2: Pattern Matching with Special Characters

Let's search for patterns instead of exact text - this is where grep becomes really powerful:

```bash
grep "^2024" server.log
```{{exec}}

```bash
grep "completed$" server.log
```{{exec}}

**What we're doing:** Using `^` to find lines starting with "2024" and `$` to find lines ending with "completed"  
**What you'll see:** Pattern matching lets you search for text in specific positions - beginning or end of lines! 🎪

---

## 🔍 Practice Exercise 3: Inverse Search - Show What Doesn't Match

Sometimes you want to see everything EXCEPT certain lines - perfect for filtering out noise:

```bash
grep -v "INFO" server.log
```{{exec}}

```bash
grep -v -i "debug" server.log
```{{exec}}

**What we're doing:** Using `-v` to show lines that DON'T contain "INFO" or "debug"  
**What you'll see:** Only WARNING and ERROR messages appear - great for focusing on problems! 🚨

Ready to learn about context lines and professional search combinations? →
