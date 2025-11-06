# Step 5 — Quick file view summary

Let's review all the file viewing commands you've learned!

---

### 📋 File Viewing Commands Summary

Create a test file to practice with:

```bash
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5\nLine 6\nLine 7\nLine 8\nLine 9\nLine 10" > practice.txt
```{{exec}}

View entire file:

```bash
cat practice.txt
```{{exec}}

View with paging:

```bash
less practice.txt
```{{exec}}

View first 3 lines:

```bash
head -3 practice.txt
```{{exec}}

View last 3 lines:

```bash
tail -3 practice.txt
```{{exec}}

View lines 2-7:

```bash
sed -n '2,7p' practice.txt
```{{exec}}

Count lines, words, characters:

```bash
wc practice.txt
```{{exec}}

**Command Quick Reference:**
- `cat` - Display entire file contents
- `less` - View files page by page (q to quit)
- `head` - Show first lines of file
- `tail` - Show last lines of file
- `wc` - Count lines, words, characters

Practice combining commands:

```bash
head -5 numbers.txt | tail -2
```{{exec}}

This shows lines 4-5 of numbers.txt (first 5, then last 2 of those)!

**🎉 Congratulations!** You now know the essential file viewing commands for Linux!