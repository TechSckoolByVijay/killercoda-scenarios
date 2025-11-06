# Step 3 — Precision Viewing (head, tail, wc) 🎯

## Quick Line Previews

```bash
head -5 /etc/passwd
```{{exec}}

```bash
tail -3 /etc/passwd
```{{exec}}

**Perfect!** `head` = first lines, `tail` = last lines.

---

## Count File Statistics

```bash
wc /etc/passwd
```{{exec}}

```bash
wc -l /etc/passwd
```{{exec}}

**Format:** lines words characters filename

---

## Search Text with grep

```bash
echo "apple
banana
cherry
grape
pineapple" > fruits.txt
```{{exec}}

```bash
grep "apple" fruits.txt
```{{exec}}

```bash
grep "^c" fruits.txt
```{{exec}}

```bash
grep -i "GRAPE" fruits.txt
```{{exec}}

**Search patterns:**
- `^c` = starts with 'c'
- `-i` = ignore case

---

## Real-World Examples

```bash
grep "root" /etc/passwd
```{{exec}}

```bash
head -3 fruits.txt | grep "a"
```{{exec}}

💡 **Power combo:** Combine `head`, `tail`, `grep` for targeted analysis!

**🎉 File mastery complete!**