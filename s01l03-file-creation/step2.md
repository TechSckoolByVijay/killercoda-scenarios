# Step 2 — View Files (cat, less) 👀

## Quick File Preview

```bash
cat notes.txt
```{{exec}}

```bash
cat todo.txt
```{{exec}}

**Perfect!** `cat` shows entire content instantly.

---

## Multiple Files at Once

```bash
cat notes.txt todo.txt
```{{exec}}

**See?** All files displayed in sequence.

---

## Large Files Need less

```bash
cat /etc/passwd
```{{exec}}

**Too much text!** Use `less` for comfortable reading:

```bash
less /etc/passwd
```{{exec}}

**Navigation:**
- ↓/↑ arrows = scroll
- `space` = page down  
- `q` = quit

**Try scrolling, then press `q`**

---

## File Information

```bash
file notes.txt
```{{exec}}

```bash
wc -l /etc/passwd
```{{exec}}

```bash
head -3 /etc/passwd
```{{exec}}

```bash
tail -3 /etc/passwd
```{{exec}}

💡 **Quick tips:** `head` = first lines, `tail` = last lines

**Ready for text searching magic?** →