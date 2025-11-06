# Step 1 — cat: View entire files

The `cat` command displays the entire contents of a file. It's perfect for small files!

---

### 📄 Task — Master file viewing with cat

Let's create some files with content to view:

```bash
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5" > small.txt
```{{exec}}

Use cat to view the file:

```bash
cat small.txt
```{{exec}}

Cat can display multiple files:

```bash
echo "File B content" > fileb.txt
```{{exec}}

```bash
cat small.txt fileb.txt
```{{exec}}

Cat with line numbers:

```bash
cat -n small.txt
```{{exec}}

View a system file:

```bash
cat /etc/hostname
```{{exec}}

**When to use cat:**
- ✅ Small files (under 50 lines)
- ✅ Quick content verification
- ✅ Combining multiple files
- ❌ Large files (will flood your terminal!)

Click **Check** after exploring cat.