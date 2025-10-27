````markdown
# Step 1 — cat: View entire files

The `cat` command displays the entire contents of a file. It's perfect for small files!

**Creating test files:**

**Task:** Let's create some files with content to view:

```
echo -e "Line 1\nLine 2\nLine 3\nLine 4\nLine 5" > small.txt
```

**Task:** Use cat to view the file:

```
cat small.txt
```

**Task:** Cat can display multiple files:

```
echo "File B content" > fileb.txt
cat small.txt fileb.txt
```

**Task:** Cat with line numbers:

```
cat -n small.txt
```

**Task:** View a system file:

```
cat /etc/hostname
```

**When to use cat:**
- ✅ Small files (under 50 lines)
- ✅ Quick content verification
- ✅ Combining multiple files
- ❌ Large files (will flood your terminal!)

Click **Check** after exploring cat.
````