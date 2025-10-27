# Step 3 — Copying files with cp

The `cp` command copies files and directories.

---

### 📋 Task — Master file copying

First, let's create a file with some content:

```bash
echo "Hello World" > source.txt
```{{exec}}

Copy the file:

```bash
cp source.txt backup.txt
```{{exec}}

Verify both files exist:

```bash
ls -l *.txt
```{{exec}}

Copy to a different directory:

```bash
cp source.txt myproject/
```{{exec}}

Copy with a new name:

```bash
cp source.txt myproject/renamed.txt
```{{exec}}

Copy directories (use `-r` for recursive):

```bash
cp -r myproject myproject_backup
```{{exec}}

Copy multiple files to a directory:

```bash
cp file1.txt file2.txt file3.txt docs/
```{{exec}}

**Important:** Use `-r` (recursive) when copying directories!

Click **Check** after practicing file copying.